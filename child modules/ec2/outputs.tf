output "wordpress_ec2_public_ip" {
  value = aws_instance.wordpress_ec2.public_ip
}

output "wordpress_ec2_id" {
  value = aws_instance.wordpress_ec2.id
}
