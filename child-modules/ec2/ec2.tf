resource "aws_instance" "wordpress_ec2" {
  ami                    = var.ami
  instance_type          = var.ec2_instance_type
  subnet_id              = var.subnets[0]
  vpc_security_group_ids = [var.wordpress_sg_id]
  key_name               = var.ec2_instance_key_name
  user_data              = file("${path.module}/wordpress_user_data.sh")

  tags = {
    Name = var.ec2_instance_name
  }
}
