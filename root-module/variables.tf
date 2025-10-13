variable region {
  type        = string
}

variable region iam_profile{
  type        = string
}

variable vpc_cidr {
  type        = string
}

variable vpc_name {
  type        = string
}

variable igw_name {
  type        = string
}

variable rt_name {
  type        = string
}

variable rds_name {
  type        = string
}

variable rds_allocated_storage {
  type        = number
}

variable rds_storage_type {
  type        = string
}

variable rds_engine {
  type        = string
}

variable rds_engine_version {
  type        = string
}

variable rds_instance_class {
  type        = string
}

variable mysql_username {
  type        = string
}

variable mysql_password {
  type        = string
}

variable rds_db_name {
  type        = string
}

variable ingress_ports {
  type        = list(number)
  default     = [80, 443, 22]
}

variable ami {
  type        = string
}

variable instance_type {
  type        = string
}

variable key_name {
  type        = string
}

variable ec2_name {
  type        = string
}