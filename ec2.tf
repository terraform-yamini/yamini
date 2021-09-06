terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
       }
    }
}
provider "aws" {
    profile = "default"
    region = "us-east-1"    
}
resource "aws_instance" "ec2-linux-demo" {
    ami = "ami-0be2609ba883822ec"
    instance_type = "t2.micro"
}
