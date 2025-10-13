output "wordpress_sg_id" {
  value = aws_security_group.wordpress_sg.id
}

output "rds_sg_id" {
  value = aws_security_group.rds_sg.id
}

output "db_instance_id" {
  description = "RDS instance ID"
  value       = aws_db_instance.mysql.id
}

output "db_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.mysql.endpoint
}

output "db_name" {
  description = "Database name"
  value       = aws_db_instance.mysql.db_name
}

output "db_port" {
  description = "Database port"
  value       = aws_db_instance.mysql.port
}