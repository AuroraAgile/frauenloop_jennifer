variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm_admin_username" {
  type = string
}

variable "vm_ssh_public_key" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "app_service_name" {
  description = "Nombre del App Service"
  type        = string
}
