rg_name = {
  rg1 = {
    rgname     = "frontrg12"
    rglocation = "centralindia"
  }

}
sb = {
  sb1 = {
    snetname         = "subnet-web"
    address_prefixes = ["10.0.1.0/24"]
    rgname           = "frontrg12"
    vnetname         = "vnet-saurabh"
  }
}
vnname = {
  vn1 = {
    vnetname      = "vnet-saurabh"
    address_space = ["10.0.0.0/16"]
    vnetlocation  = "centralindia"
    rgname        = "frontrg12"
  }

}
nic23 = {
  nic1 = {
    nicname     = "nicfrontend"
    niclocation = "centralindia"
    rgname      = "frontrg12"
    subnet_key  = "sb1"
    subnetname  = "subnet-web"
    vnetname    = "vnet-saurabh"
  }
  nic2 = {
    nicname     = "nicbackend"
    subnet_key  = "sb1"
    niclocation = "centralindia"
    rgname      = "frontrg12"
    subnetname  = "subnet-web"
    vnetname    = "vnet-saurabh"
  }
}

# 
vm_name = {
  vm1 = {
    name       = "vm-frontend"
    size       = "Standard_B1s"
    nic_key    = "nic1"
    rgname     = "frontrg12"
    location   = "centralindia"
    admin_user = "azureuser"
    admin_pass = "Password@12345"
  }

  vm2 = {
    name       = "vm-backend"
    size       = "Standard_B1s"
    nic_key    = "nic2"
    rgname     = "frontrg12"
    location   = "centralindia"
    admin_user = "saurabh"
    admin_pass = "Password@12345"
  }
}

  