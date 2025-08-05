output "vnet_id" {
  description = "ID de la red virtual"
  value       = azurerm_virtual_network.vnet.id
}

output "public_subnet_id" {
  description = "ID de la subred pública"
  value       = azurerm_subnet.public.id
}

output "private_subnet_id" {
  description = "ID de la subred privada"
  value       = azurerm_subnet.private.id
}
