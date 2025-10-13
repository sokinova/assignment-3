variable ami {
  type        = string
  description = "AMI for EC2 instance"
}

variable public_subnets {
  type        = list(string)
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

variable wordpess_sg_id {
  type        = string
  description = "Security group ID for the EC2 instance"
}
