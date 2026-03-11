resource "azurerm_virtual_network" "network" {
  for_each = var.network1
  name                = each.value.vnetname
  address_space       = each.value.address_space
  location            = each.value.vnetlocation
  resource_group_name = each.value.rgname
}