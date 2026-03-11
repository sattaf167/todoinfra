resource "azurerm_mssql_database" "sqldb" {
  for_each = var.databases

  name      = each.value.dbname
  server_id = data.azurerm_mssql_server.sqs[each.value.server_key].id

  sku_name     = each.value.sku_name
  max_size_gb = each.value.max_size_gb

  collation = "SQL_Latin1_General_CP1_CI_AS"
}
data "azurerm_mssql_server" "sqs" {
  for_each = var.safari

  name                = each.value.name
  resource_group_name = each.value.rg_name
}
