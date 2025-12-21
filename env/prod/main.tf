module "rgs" {
    source = "../../module/resource_group"
      rgs    = var.rgs
}

module "networks" {
    depends_on = [ module.rgs ]
    source = "../../module/azure_networking"
    networks = var.networks
}

module "key_vaults" {
    depends_on = [ module.rgs ]
    source = "../../module/key_vault"
    key_vaults = var.key_vaults
}
module "pip" {
    depends_on = [ module.rgs ]
    source = "../../module/public_ip"
    public_ips = var.public_ips
}
module "virtual_machine" {
    depends_on = [ module.rgs,module.key_vaults,module.networks,module.pip ]
    source = "../../module/virtual_machine"
  vms = var.vms
}
module "sql_server" {
  depends_on = [ module.rgs ]
  source          =  "../../module/sql_server"
  sql_server = var.sql_server
}

# module "sql_db" {
#   depends_on = [ module.rgs, module.sql_server ]
#   source = "../../module/sql_database"
#   sql_db           = var.sql_db

# }