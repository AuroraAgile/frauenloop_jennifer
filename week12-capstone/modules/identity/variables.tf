variable "key_vault_name" {
  type        = string
  description = "Nombre del Key Vault"
}

variable "location" {
  type        = string
  description = "Ubicación del recurso"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "soft_delete_enabled" {
  description = "Habilita soft delete en Key Vault"
  type        = bool
  default     = true
}
