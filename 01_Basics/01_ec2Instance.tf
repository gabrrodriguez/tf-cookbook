# Pre-requisites
# 1. Ensure you have a `default-vpc` in the respectie region
# 2. Ensure the AMI you are provisioning exists in that region if not update the AMI ID
# 3. Verify your AWS Credentials in $HOME/.aws/credentials

# Terraform Settings Block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        # version = "~>3.21"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = "t2.micro"
}