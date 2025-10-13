variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "vpc_name" {
  description = "name tag for VPC"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "rt_name" {
  description = "name for route table"
  type        = string
}

variable "igw_name" {
  description = "name for route table"
  type        = string
}