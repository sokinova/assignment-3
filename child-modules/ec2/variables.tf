variable "ami" {
  type        = string
  description = "AMI for EC2 instance"
}

variable "subnets" {
  type        = list(string)
}

variable "ec2_instance_type" {
  type        = string
}

variable "ec2_instance_key_name" {
  type        = string
}

variable "ec2_instance_name" {
  type        = string
}

variable "wordpress_sg_id" {
  description = "The ID of the WordPress Security Group"
  type        = string
}