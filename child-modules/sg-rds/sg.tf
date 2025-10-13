resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress-sg"
  description = "Security group for WordPress EC2 instance"
  vpc_id      = var.vpc_id

  # Dynamic ingress rules using the ingress_ports variable
  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "wordpress-sg"
  }
}

#RDS-SG

resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Security group for RDS MySQL instance"
  vpc_id      = var.vpc_id

  # Allow MySQL traffic ONLY from wordpress-sg security group
  ingress {
    description     = "MySQL from WordPress EC2"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.wordpress_sg.id]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-sg"
  }
}