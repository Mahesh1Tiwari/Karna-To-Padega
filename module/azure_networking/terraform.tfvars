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