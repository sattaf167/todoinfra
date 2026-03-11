variable "rg_name" {
  type = map(object({
    rgname       = string
    rglocation = string
  }))
}
variable "vnname" {
  type = map(object({
    vnetname      = string
    vnetlocation  = string
    address_space = list(string)
    rgname        = string
  }))
}
variable "sb" {
  type = map(object({
    snetname         = string
    rgname           = string
    vnetname         = string
    address_prefixes = list(string)
  }))
}
variable "nic23" {
  type = map(object({
    nicname     = string
    niclocation = string
    rgname      = string
    subnet_key  = string
    subnetname  = string
    vnetname    = string

  }))
}
variable "vm_name" {
  type = map(object({
    name           = string
    rgname         = string
    size           = string
    location       = string
    zones          = list(string)
    nic_key        = string
    admin_user     = string
    admin_password = string

  }))
}
variable "sqlserver" {
  type = map(object({
    sqlname                      = string
    rgname                       = string
    sqllocation                  = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
    login_username               = string
    object_id                    = string
  }))
}
variable "azurerm_mssql_database" {
  type = map(object({
    dbname      = string
    server_key  = string
    sku_name    = string
    max_size_gb = number
  }))
}
variable "public_ips" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
    tags                = map(string)
  }))
}
variable "safaris" {
  type = map(object({
    name = string
    rg_name = string
  }))
}
