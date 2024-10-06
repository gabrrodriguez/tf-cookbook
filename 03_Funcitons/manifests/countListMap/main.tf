# Terraform Settings Block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region = var.aws_region
}