variable "alvm" {
  type = map(object({
    name       = string
    size       = string
    nic_key    = string
    zones = list(string)
    rgname     = string
    location   = string
    admin_user = string
    admin_password = string
  }))
}

variable "nic_ids" {
  type = map(string)
}


