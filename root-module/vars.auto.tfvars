region      = "us-east-1"
iam_profile = "default"
vpc_cidr    = "10.0.0.0/16"
vpc_name    = "wordpress-vpc"
igw_name    = "wordpress-igw"
rt_name     = "wordpress-rt"

#sg-rds
rds_name              = "wordpress-mysql"
rds_allocated_storage = 20
rds_storage_type      = "gp2"
rds_engine            = "mysql"
rds_engine_version    = "8.0.42"
rds_instance_class    = "db.t3.micro"
mysql_username        = "admin"
mysql_password        = "adminadmin"
rds_db_name           = "wordpressdb"
ingress_ports         = [22, 443, 80]
vpc_security_group_ids  = ["aws_security_group.rds_sg.id"]
db_subnet_group_name    = "aws_db_subnet_group.mysql_sub_group.name"

ami                   = "ami-052064a798f08f0d3"
ec2_instance_type     = "t3.micro"
ec2_instance_key_name = "aziza-demo"
ec2_instance_name     = "wordpress-ec2"
