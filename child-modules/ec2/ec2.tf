locals {
  first_public_subnet_id = var.public_subnets[0]   # pick the first public subnet
}

resource "aws_instance" "wordpress_ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = local.first_public_subnet_id
  vpc_security_group_ids = [var.wordpress_sg_id]
  key_name               = var.key_name
  user_data              = file("${path.module}/wordpress_user_data.sh")

  tags = {
    Name = var.ec2_name
  }
}
