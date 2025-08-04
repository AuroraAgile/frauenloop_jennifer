variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group"
}

variable "location" {
  type        = string
  description = "Ubicación de los recursos"
}

variable "vnet_name" {
  type        = string
  description = "Nombre de la Virtual Network"
}

variable "public_subnet_name" {
  type        = string
  description = "Nombre de la subred pública"
}

variable "private_subnet_name" {
  type        = string
  description = "Nombre de la subred privada"
}

variable "vm_admin_username" {
  type        = string
  description = "Usuario administrador para la VM"
}

variable "vm_ssh_public_key" {
  type        = string
  description = "Clave pública SSH para acceder a la VM"
}

variable "storage_account_name" {
  type        = string
  description = "Nombre de la cuenta de almacenamiento"
}

variable "key_vault_name" {
  type        = string
  description = "Nombre del Key Vault"
}

variable "log_analytics_name" {
  type        = string
  description = "Nombre del Log Analytics workspace"
}

variable "app_service_name" {
  type        = string
  description = "Nombre del App Service"
}
