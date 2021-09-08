resource "aws_instance" "ec2-demo" {
    ami = "ami-038f1ca1bd58a5790"
    instance_type = "t2.micro"
    availability_zone = "us-east-1e"
    tags = {
        "name" = "state-demo"
    }
}