output "wordpress_ec2_public_ip" {
  description = "The public IP of the WordPress EC2 instance"
  value       = module.ec2.wordpress_ec2_public_ip
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "vpc_id" {
  value = module.vpc-networking.vpc_id
}

output "public_subnets" {
  value = module.vpc-networking.public_subnet_ids
}

output "private_subnets" {
  value = module.vpc-networking.private_subnet_ids
}

output "rds_sg_id" {
  value = module.rds.rds_sg_id
}

