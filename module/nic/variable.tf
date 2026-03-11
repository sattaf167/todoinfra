variable "ninterface" {
  type = map(object({
    nicname     = string
    niclocation = string
    rgname      = string
    subnet_key  = string   # 🔥 ADD THIS
    subnetname  = string
    vnetname    = string
  }))
}

variable "subnet_ids" {
  type = map(any)
}
