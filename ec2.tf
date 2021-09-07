
resource "aws_instance" "ec2-linux-demo" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
    key_name = "terraform-key"
    user_data = << - EOF
    #! /bin/bash
    sudo yum update -y 
    sudo yum install -y httpd
    sudo service httpd start
    sudo systemctl enable httpd
    echo "<h1> welcome to stack simplify ! aws infra created using terraform in us-east-1</h1>" > /var/www/html/index.html
    EOF
    vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
}
