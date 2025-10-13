variable vpc_id {
  type        = string
  description = "the vpc id for the security group"
}

variable ingress_ports {
  type        = list(number)
  description = "List of ingress ports for WordPress security group "
}

variable rds_name {
  type        = string
  description = "the name of the rds instance"
}

variable rds_allocated_storage {
  type        = string
  description = "the allocated storage in GB"
}

variable rds_storage_type {
  type        = string
  description = "srtorage type"
}
variable rds_engine {
  type        = string
  description = "db engine"
}

variable rds_engine_version {
  type        = string
  description = "version of db engine"
}

variable rds_instance_class {
  type        = string
  description = "db instance class"
}

variable mysql_username {
  type        = string
  description = "db admin username"
}

variable mysql_password {
  type        = string
  description = "db admin password"
}

variable rds_db_name {
  description = "The name of the database"
  type        = string
}

variable private_subnet_ids {
  type        = list(string)
  description = "list of private subnet IDs where RDS instance can be launched"
}
