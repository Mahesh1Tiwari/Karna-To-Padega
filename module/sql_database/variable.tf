variable "sql_db" {
  type = map(object({
    sql_db_name        = string
    sql_server_name    = string   
    rg_name            = string   
    collation          = string
    max_size_gb        = number
    sku_name           = string
    tags               = map(string)
  }))
}