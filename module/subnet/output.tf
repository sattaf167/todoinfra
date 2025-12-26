output "subnet_ids" {
  value = {
    for k, v in azurerm_subnet.snetwork :
    k => v.id
  }
}
