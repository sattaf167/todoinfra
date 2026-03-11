resource "azurerm_mssql_server" "sqs" {
    for_each = var.server
  name                         = each.value.sqlname
  resource_group_name          = each.value.rgname
  location                     = each.value.sqllocation
  version                      = each.value.version
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
  minimum_tls_version          = each.value.minimum_tls_version

  azuread_administrator {
    login_username = each.value.login_username
    object_id      = each.value.object_id
  }
}