variable "aws_region" {
    type =  string 
    default = "us-east-1"
}
/*
variable "ec2_ami_id" {
    type = string 
    default = "ami-0915bcb5fa77e4892"
}
*/
variable "ec2_instance_type" {
    type = string 
    default = "t3.micro"
}