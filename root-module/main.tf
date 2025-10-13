#VPC module
module "vpc-networking" {
  source = "../child-modules/vpc-networking"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  igw_name = var.igw_name
  rt_name  = var.rt_name
  region = var.region
}

#SG-RDS module
module "rds" {
  source = "../child-modules/sg-rds"
  vpc_id = module.vpc-networking.vpc_id
  private_subnet_ids = module.vpc-networking.private_subnet_ids
  rds_name = var.rds_name
  rds_allocated_storage = var.rds_allocated_storage
  rds_storage_type = var.rds_storage_type
  rds_engine = var.rds_engine
  rds_engine_version = var.rds_engine_version
  rds_instance_class = var.rds_instance_class
  mysql_user = var.mysql_username
  mysql_pass = var.mysql_password
  rds_db_name = var.rds_db_name
  ingress_ports = var.ingress_ports
  
}

module "ec2" {
    source         = "../child-modules/ec2"
    vpc_id   = module.vpc-networking.vpc_id
    subnets = module.vpc-networking.public_subnet_ids
    ami  = var.ami
    ec2_instance_type = var.instance_type
    ec2_instance_key  = var.key_name
    ec2_instance_name = var.ec2_name

}