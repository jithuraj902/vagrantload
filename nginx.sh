sudo yum install epel-release -y
sudo yum install nginx -y
sudo systemctl stop nginx
sudo rm -rf /etc/nginx/nginx.conf
sudo touch /etc/nginx/nginx.conf

sudo echo "upstream testapp {
    server 192.168.33.11;
    server 192.168.33.12;
}
    server {
        listen       80 default_server;
        listen       [::]:80 default_server;
        server_name  _;
        root         /usr/share/nginx/html;
        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;
    location / {
    proxy_pass http://testapp;
    }
}" >> /etc/ngnix/ngnix.conf
sudo systemctl start nginx
echo "MACHINE: LOAD BALANCER" >> /usr/share/nginx/html/index.html
echo "Provision LB1 complete"

