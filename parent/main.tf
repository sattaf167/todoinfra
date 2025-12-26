module "rg1" {
  source    = "../env/module/rg"
  datastore = var.rg_name
}
module "vn1" {
  depends_on = [module.rg1]
  source     = "../env/module/vnet"

  network1 = var.vnname
}
module "sbn1" {
  depends_on = [module.vn1 , module.rg1]
  source     = "../env/module/subnet"
  snet1 = var.sb
}
module "nics" {
  depends_on = [module.rg1 ,module.sbn1]
  source     = "../env/module/nic"
  ninterface = var.nic23
  subnet_ids = module.sbn1.subnet_ids
}

module "vmss" {
  depends_on = [module.nics ,module.rg1]
  source     = "../env/module/vm"
  alvm       = var.vm_name
  nic_ids    = module.nics.nic_ids
}




