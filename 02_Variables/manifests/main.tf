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
  region = var.aws_region
}


