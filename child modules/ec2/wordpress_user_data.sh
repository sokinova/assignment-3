#!/bin/bash
# Update and install dependencies
yum update -y
yum install -y httpd php php-mysqlnd php-fpm php-json php-gd php-xml mariadb105

# Start Apache
systemctl enable httpd
systemctl start httpd

# Download and configure WordPress
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/

# Set permissions
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

# Restart Apache
systemctl restart httpd

# Create a simple redirect to /blog
echo "<meta http-equiv='refresh' content='0; url=/blog'>" > /var/www/html/index.html
mkdir /var/www/html/blog
cp -r /var/www/html/* /var/www/html/blog/
