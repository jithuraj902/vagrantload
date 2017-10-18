sudo yum install httpd git -y
sudo systemctl start httpd
sudo git clone https://github.com/jithuraj902/Flexor.git /var/www/html/
sudo systemctl restart httpd
