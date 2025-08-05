variable "resource_group_name" {
  description = "Nombre del Resource Group"
  type        = string
}

variable "location" {
  description = "Ubicación del recurso en Azure"
  type        = string
}

variable "vnet_name" {
  description = "Nombre de la Virtual Network"
  type        = string
}

variable "public_subnet_name" {
  description = "Nombre de la subred pública"
  type        = string
}

variable "private_subnet_name" {
  description = "Nombre de la subred privada"
  type        = string
}
