variable "public_ip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = optional(string, "Standard")
    tags                = map(string)
  }))
}
