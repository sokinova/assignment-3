#!/bin/bash
# Update and install dependencies
yum update -y
yum install -y httpd php php-mysqlnd php-fpm php-json php-gd php-xml mariadb105 wget tar

# Enable and start Apache
systemctl enable httpd
systemctl start httpd

# Download and extract WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# Move WordPress to /var/www/html/blog
mkdir -p /var/www/html/blog
cp -r wordpress/* /var/www/html/blog/

# Set permissions
chown -R apache:apache /var/www/html/blog
chmod -R 755 /var/www/html/blog

# Restart Apache
systemctl restart httpd

# Optional: Redirect main page to /blog
echo "<meta http-equiv='refresh' content='0; url=/blog'>" > /var/www/html/index.html
