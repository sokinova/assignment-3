#DB Subnet Group
resource "aws_db_subnet_group" "mysql-sub-group" {
  name       = "mysql-sub-group"
  #subnet_ids = [for s in aws_subnet.priv-sub : s.id]
  subnet_ids = var.private_subnet_ids

  tags = {
    Name        = "mysql-sub-group"
  }
}
# RDS MySQL DB
resource "aws_db_instance" "mysql" {
  identifier             = var.rds_name
  allocated_storage      = var.rds_allocated_storage
  storage_type           = var.rds_storage_type
  engine                 = var.rds_engine
  engine_version         = var.rds_engine_version
  instance_class         = var.rds_instance_class
  username               = var.mysql_username
  password               = var.mysql_password
  db_name = var.rds_db_name
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.mysql-sub-group.name
  multi_az               = false
  backup_retention_period = 7
}

