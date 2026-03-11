resource "azurerm_resource_group" "rgn" {
    for_each = var.datastore
  name     = each.value.rgname
  location = each.value.rglocation
}