variable "db2_warehouse_host" {
  type        = string
  description = "The host name for the DB2 Warehouse instance"
  default = "host"
}

variable "db2_warehouse_port" {
  type        = number
  description = "The port for the DB2 Warehouse instance"
  default = 10000
}

variable "db2_warehouse_database_name" {
  type        = string
  description = "The database name for the DB2 Warehouse instance"
  default = "db_name"
}

variable "db2_warehouse_username" {
  type        = string
  description = "The username for the DB2 Warehouse instance"
  default = "myusername"
}

variable "db2_warehouse_password" {
  type        = string
  description = "The password for the DB2 Warehouse instance"
  sensitive = true
  default = "mypassword"
}
