terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
       }
       random = {
           source = "hashicorp/random"
           version = "3.1.0"
       }
    }
}
provider "aws" {
    profile = "default"
    region = "us-east-1"    
}
data "terraform_remote_state" "myBackend" {
   backend "s3" {
       bucket = "terraform-state-prod-1"
       key = "network/terraform.tfstate"
       region = "us-east-1"
   }
}