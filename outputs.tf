output "host" {
  description = "The host name for the DB2 Warehouse instance"
  value = var.host
}

output "port" {
  description = "The port for the DB2 Warehouse instance"
  value = var.port
}

output "database_name" {
  description = "The database name for the DB2 Warehouse instance"
  value = var.database_name
}

output "username" {
  description = "The username for the DB2 Warehouse instance"
  value = var.username
}

output "password" {
  description = "The password for the DB2 Warehouse instance"
  sensitive = true
  value = var.password
}
