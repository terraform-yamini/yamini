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
    default = "t2.small"
}
variable "package_name" {
  description = "Provide Package that need to be installed with user_data"
  type = string
  default = "httpd"
}
variable "availability_zones" {
  description = "List of Availability Zones resources will be created"
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "high_availability" {
  type        = bool
  description = "If this is a multiple instance deployment, choose `true` to deploy 2 instances"
  default     = false
  #default     = true
}


variable "name" {
  description = "The username assigned to the infrastructure"
  type = string 
  default     = "ec2-user"
  #default     = ""
}

variable "team" {
  description = "The team responsible for the infrastructure"
  type = string
  default     = "stacksimplify"
}
