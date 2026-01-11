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
    # size       = "Standard_B1s"
   size = "Standard_D2s_v3"

    zones = ["1"]
    nic_key    = "nic1"
    rgname     = "frontrg12"
    location   = "centralindia"
    admin_user = "azureuser"
    admin_pass = "Password@12345"
  }

  vm2 = {
    name       = "vm-backend"
    # size       = "Standard_B1s"
    size = "Standard_D2s_v3"

    nic_key    = "nic2"
    rgname     = "frontrg12"
    location   = "centralindia"
    zones = ["1"]
    admin_user = "saurabh"
    admin_pass = "Password@12345"
  }
}
sqlserver = {
  sql1 = {
  sqlname = "sqlvmd11"
  rgname = "frontrg12"
  sqllocation = "centralindia"
  version                      = "12.0"
  administrator_login          = "sattafadmin"
  administrator_login_password = "Yuvan@123"
  minimum_tls_version          = "1.2"
  login_username                = "AzureAD Admin"
  object_id      = "d1570619-4d28-4c5b-9138-b7a858fa1213"
  }


  sql2 = {
    sqlname                       = "sqlvmd12"
    rgname                        = "frontrg12"
    sqllocation                   = "centralindia"
    version                       = "12.0"
    administrator_login           = "sattafadmin"
    administrator_login_password  = "yuvan@123"
    minimum_tls_version           = "1.2"
    login_username                = "AzureAD Admin"
    object_id      = "d1570619-4d28-4c5b-9138-b7a858fa1213"

  }
}
azurerm_mssql_database = {
  db1 = {
    dbname       = "appdb1"
    server_key  = "sql1"
    sku_name    = "Basic"
    max_size_gb = 2
  }

  db2 = {
    dbname       = "appdb2"
    server_key  = "sql2"
    sku_name    = "Basic"
    max_size_gb = 2
  }
}
safaris = {
  sql1 = {
    name    = "sqlvmd11"
    rg_name = "frontrg12"
  }

  sql2 = {
    name    = "sqlvmd12"
    rg_name = "frontrg12"
  }
}

public_ips = {
  pip1 = {
    name                = "acceptanceTestPublicIp1"
    resource_group_name = "frontrg12"
    location            = "centralindia"
    allocation_method   = "Static"
    sku                 = "Standard"

    tags = {
      environment = "Production"
      owner       = "DevOps"
    }
  }

  pip2 = {
    name                = "acceptanceTestPublicIp2"
    resource_group_name = "frontrg12"
    location            = "centralindia"
    allocation_method   = "Static"

    tags = {
      environment = "UAT"
    }
  }
}

  
  