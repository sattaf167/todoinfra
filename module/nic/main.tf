resource "azurerm_network_interface" "nicnetwork" {
  for_each = var.ninterface

  name                = each.value.nicname
  location            = each.value.niclocation
  resource_group_name = each.value.rgname

  ip_configuration {
    name                          = "internal"
  subnet_id = var.subnet_ids[each.value.subnet_key]

    private_ip_address_allocation = "Dynamic"
  }
}


