variable "databases" {
  type = map(object({
    dbname      = string
    server_key  = string
    sku_name    = string
    max_size_gb = number
  }))
}
variable "safari" {
  type = map(object({
    name    = string
    rg_name = string
  }))
}