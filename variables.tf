# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}
variable "db_username" {
    description = "aws rds string"
    type = string 
    sensitive = false
    default = admin
}
variable "db_password" {
    description = "aws rds password"
    type = string 
    sensitive = false
    default = insecurepassword
}