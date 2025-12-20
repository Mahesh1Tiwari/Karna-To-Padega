rgs = {
  rg1 = {
    name     = "rg-mahesh-01"
    location = "centralindia"
    managed_by  = "Terraform"
    tags = {
      env = "dev"
    }
  }}
  networks = {
  vnet1 = {
    name          = "vnet-mahesh-01"
    location   = "centralindia"
    rg_name       = "rg-mahesh-01"
    address_space = ["10.0.0.0/16"]
    tags = {
      environment = "dev"
    }
    subnets = [
      {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}


key_vaults = {
  kv1 = {
    kv_name     = "kv-mahesh-01"
    rg_location = "centralindia"
    rg_name     = "rg-mahesh-01"
  }
}

public_ips = {
  app1 = {
    name                = "pip-mahesh-01"
    rg_name = "rg-mahesh-01"
    location            = "centralindia"
    allocation_method   = "Static"
    sku                 = "Standard"
    zones               = ["1", "2"]
    ip_version          = "IPv4"
    
    tags = {
      app = "frontend"
      env = "dev"
    }
  }

  app2 = {
    name                = "pip-mahesh-02"
    rg_name = "rg-mahesh-01"
    location            = "centralindia"
    allocation_method   = "Static"
   sku                 = "Standard"
    ip_version          = "IPv4"
    
    tags = {
      app = "backend"
      env = "staging"
    }
  }
}
vms = {
  vm1 = {
    nic_name    = "nic-mahesh-01"
    location    = "centralindia"
    rg_name     = "rg-mahesh-01"
    vnet_name   = "vnet-mahesh-01"
    subnet_name = "frontend-subnet"
    pip_name    = "pip-mahesh-01"
    vm_name     = "frontend-vm"
    size        =  "Standard_D2s_v3"
    kv_name     = "kv-mahesh-01"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
  vm2 = {
    nic_name    = "nic-mahesh-02"
    location    = "centralindia"
    rg_name     = "rg-mahesh-01"
    vnet_name   = "vnet-mahesh-01"
    subnet_name = "frontend-subnet"
    pip_name    = "pip-mahesh-02"
    vm_name     = "backend-vm"
    size        =  "Standard_D2s_v3"

    kv_name     = "kv-mahesh-01"

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

sql_server = {
  sql1 = {
    sql_server_name = "mahesh-sql-server"
    rg_name         = "rg-mahesh-01"
    location        = "Central India"
     version                = "12.0"
    minimum_tls_version    = "1.2"

    # admin_username  = "sqladminuser"
    # admin_password  = "P@ssword8090!"
    tags = {
      environment = "dev"
      project     = "monolithic-infra"
    }
  }
}

# sql_db = {
#   sql_db1 = {
#     sql_db_name      = "maheshdatabase"
#     rg_name          = "rg-mahesh-01"
#     sql_server_name  = "/subscriptions/acd9510d-7e29-433d-8504-d10d34dba654/resourceGroups/rg-mahesh-01/providers/Microsoft.Sql/servers/mahesh-sql-server"
#     tags             = {
#       environment = "dev"
#       project     = "monolithic-infra"
#     }
#   }
# }

