output "key_vault_id" {
  value = azurerm_key_vault.keyvault.id
}

output "user_assigned_identity_id" {
  value = azurerm_user_assigned_identity.app_identity.id
}
