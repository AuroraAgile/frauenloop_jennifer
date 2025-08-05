terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  public_subnet_name  = var.public_subnet_name
  private_subnet_name = var.private_subnet_name
}

module "compute" {
  source              = "./modules/compute"
  resource_group_name = var.resource_group_name
  location            = var.location
  private_subnet_id   = module.network.private_subnet_id
  vm_admin_username   = var.vm_admin_username
  vm_ssh_public_key   = var.vm_ssh_public_key
  app_service_name    = var.app_service_name
}

module "storage" {
  source              = "./modules/storage"
  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_name = var.storage_account_name
}
 
module "identity" {
  source              = "./modules/identity-bypass"
  resource_group_name = var.resource_group_name
  location          = var.location
  key_vault_name    = var.key_vault_name
}

module "monitoring" {
  source              = "./modules/monitoring"
  resource_group_name = var.resource_group_name
  location            = var.location
  log_analytics_name  = var.log_analytics_name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "app_service_id" {
  value = module.compute.app_service_id
}

output "vm_id" {
  value = module.compute.vm_id
}

output "storage_account_id" {
  value = module.storage.storage_account_id
}

output "key_vault_id" {
  value = module.identity.key_vault_id
}

output "log_analytics_workspace_id" {
  value = module.monitoring.log_analytics_workspace_id
}
