# Input Variables

# AWS region
variable "aws_region" {
    description = "Region in which AWS deploys resources"
    type = string
    default = "us-east-1"
}

# AWS EC2 instance_type
variable "instance_type" {
    description = "This is the EC2 instance type created"
    type=string
    default= "t3.micro"
}

# AWS EC2 instance_keypair
variable "instance_keypair" {
    description = "This is the EC2 keypair required for SSH access."
    type=string
    default = "tf-us-east-1"
}


