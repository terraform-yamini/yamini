variable "aws_region"  {
    description = "region in which aws resources are present"
    type = string 
    default = "us-east-1"
}
variable "ec2_ami-id" {
    description = "AMI ID"
    type = string 
    default = "ami-047a51fa27710816e"
}
variable "ec2_instance_count" {
    description = "EC2 Instance Count"
    type = number 
    default = 1
}