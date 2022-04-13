module "db2_warehouse" {
  source = "./module"

  host = var.db2_warehouse_host
  port = var.db2_warehouse_port
  database_name = var.db2_warehouse_database_name
  username = var.db2_warehouse_username
  password = var.db2_warehouse_password
}

resource local_file outputs {
  filename = "${path.cwd}/.outputs"

  content = jsonencode({
    host = module.db2_warehouse.host
    port = module.db2_warehouse.port
    database_name = module.db2_warehouse.database_name
    username = module.db2_warehouse.username
    password = module.db2_warehouse.password
  })
}
