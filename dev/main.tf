module "rg1" {
  source    = "../module/rg"
  datastore = var.rg_name
}
module "vn1" {
  depends_on = [module.rg1]
  source     = "../module/vnet"

  network1 = var.vnname
}
module "sbn1" {
  depends_on = [module.vn1 , module.rg1]
  source     = "../module/subnet"
  snet1 = var.sb
}
module "nics" {
  depends_on = [module.rg1 ,module.sbn1]
  source     = "../module/nic"
  ninterface = var.nic23
  subnet_ids = module.sbn1.subnet_ids
}

module "vmss" {
  depends_on = [module.nics ,module.rg1]
  source     = "../module/vm"
  alvm       = var.vm_name
  nic_ids    = module.nics.nic_ids
}
module "sqls" {
  depends_on = [module.rg1  ]
  source = "../module/sql"
  server = var.sqlserver  
}
module "db" {
  depends_on = [ module.sqls ]
  source = "../module/database"
  databases = var.azurerm_mssql_database
  safari = var.safaris
}
module "pipp" {
  depends_on = [ module.rg1 ]
  source = "../module/pip"
  public_ip = var.public_ips
  
}

