sudo yum update -y 
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "<h1> welcome to stack simplify ! aws infra created using terraform in us-east-1</h1>" > /var/www/html/index.html