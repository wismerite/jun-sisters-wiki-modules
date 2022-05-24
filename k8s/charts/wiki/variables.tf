variable "replicas" {
  description = "number of jswiki pods we want"
  type = number
}

variable "db_private_uri" {
  description = "private connection string for db, hostname and options" 
  type = string
}

variable "db_port" {
  description = "db port for app" 
  type = string
}

variable "db" {
  description = "name of the db for app, NOT the db cluster hostname" 
  type = string
}

variable "db_username" {
  description = "db user for app" 
  type = string
}

variable "db_password" {
  description = "db pw" 
  type = string
}

variable "db_ca" {
  description = "ca cert for db connects, from DO. must be a pem cert on one line with no header or footer " 
  type = string
}