# data "azurerm_key_vault" "existing_kv" {
#   name                = "kv-mahesh-01"
#   resource_group_name = "rg-mahesh-01"
# }

# data "azurerm_key_vault_secret" "server_username" {
#   name         = "mssql-username"
#   key_vault_id = data.azurerm_key_vault.existing_kv.id
# }

# data "azurerm_key_vault_secret" "server_password" {
#   name         = "mssql-password"
#   key_vault_id = data.azurerm_key_vault.existing_kv.id
# }

resource "azurerm_mssql_server" "sql_server" {
  for_each = var.sql_server
  name                         = each.value.sql_server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = "adminuser"
  administrator_login_password = "Adminp!@assword123"
  minimum_tls_version          = each.value.minimum_tls_version

  tags = each.value.tags
}