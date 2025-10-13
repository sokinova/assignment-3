output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc-networking.vpc_id
}

output "ec2_public_ip" {
  description = "EC2 instance public IP address"
  value       = module.ec2.public_ip
}