sudo yum install httpd git -y
sudo systemctl start httpd
sudo git clone https://github.com/devopsguy9/food.git /var/www/html/
sudo systemctl restart httpd
