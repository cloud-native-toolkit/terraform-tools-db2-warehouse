variable "host" {
  type        = string
  description = "The host name for the DB2 Warehouse instance"
}

variable "port" {
  type        = number
  description = "The port for the DB2 Warehouse instance"
}

variable "database_name" {
  type        = string
  description = "The database name for the DB2 Warehouse instance"
}

variable "username" {
  type        = string
  description = "The username for the DB2 Warehouse instance"
}

variable "password" {
  type        = string
  description = "The password for the DB2 Warehouse instance"
  sensitive = true
}
