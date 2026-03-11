resource "azurerm_linux_virtual_machine" "vmmachine" {
  for_each = var.alvm

  name                = each.value.name
  resource_group_name = each.value.rgname
  location            = each.value.location
  size                = each.value.size
  admin_username = each.value.admin_user
  admin_password = each.value.admin_password
  disable_password_authentication = false

  network_interface_ids = [
    var.nic_ids[each.value.nic_key]
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts"
  version   = "latest"
  }
}