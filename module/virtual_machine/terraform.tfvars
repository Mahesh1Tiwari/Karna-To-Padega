vms = {
  vm1 = {
    nic_name    = "nic-mahesh-01"
    location    = "centralindia"
    rg_name     = "rg-mahesh-01"
    vnet_name   = "vnet-mahesh-01"
    subnet_name = "frontend-subnet"
    pip_name    = "pip-mahesh-01"
    vm_name     = "frontend-vm"
    size        = "Standard_F2"
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
    size        = "Standard_F2"
    kv_name     = "kv-mahesh-01"

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
