resource "azurerm_key_vault" "keyvault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled   = true
  

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = azurerm_user_assigned_identity.app_identity.principal_id

    secret_permissions = [
      "get", "list", "set",
    ]
  }
}

resource "azurerm_key_vault_secret" "connection_string" {
  name         = "connectionString"
  value        = "Server=tcp:dummy.database.windows.net;Database=appdb;"
  key_vault_id = azurerm_key_vault.keyvault.id
}

resource "azurerm_key_vault_secret" "api_key" {
  name         = "apiKey"
  value        = "1234-5678-9012"
  key_vault_id = azurerm_key_vault.keyvault.id
}

resource "azurerm_user_assigned_identity" "app_identity" {
  name                = "identity-week12-capstone"
  resource_group_name = var.resource_group_name
  location            = var.location
}

data "azurerm_client_config" "current" {}
