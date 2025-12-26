variable "alvm" {
  type = map(object({
    name       = string
    size       = string
    nic_key    = string
    rgname     = string
    location   = string
    admin_user = string
    admin_pass = string
  }))
}

variable "nic_ids" {
  type = map(string)
}


