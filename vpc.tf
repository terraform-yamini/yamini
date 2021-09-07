resource "aws_vpc" "vpcdev" {
  cidr_block = "10.0.0.0/16"
  tags = {
      "Name" = "vpc-dev"
  }
}
resource "aws_subnet" "vpc-dev-public" {
    vpc_id = aws_vpc.vpc-dev.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
}
resource "aws_internet_gateway" "vpc-dev-igw" {
    vpc_id = aws.vpc.vpc-dev.id
}

resource "aws_route" "vpc-dev-public-route" {
    route_table_id = aws_route_table.vpc-dev-public-route-table.id
    destination_cidr_block = "0.0.0.0"
    gateway_id = aws_internet_gateway.vpc-dev-igw.id
    }

resource "aws_route_table_association" "vpc-dev-public-route-table-associate" {
    route_table_id =aws.route_table.vpc-dev-public-route-table.id
    subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
}
resource "aws_security_group" "dev-vpc-sg" {
    name =  "dev-vpc-default-sg"
    description =  "dev vpc default security group"
    vpc_id =  aws_vpc.vpc-dev.id
}
ingress {
    description = "allow port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.00/10"]
}
ingress {
    description = "allow port 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.00/10"]
}
  egress {
    description = "Allow all IP and Ports Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
