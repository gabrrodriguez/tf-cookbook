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

# AWS EC2 Instance Type List
variable "instance_type_list" {
    description = "EC2 instance type list"
    type = list(string)
    default = ["t3.micro", "t3.small", "t3.large"]
}

# AWS EC2 Instance type Map
variable "instance_type_map" {
    description = "EC2 instance type"
    type = map(string)
    default = {
      "dev" = "t3.micro",
      "qa" = "t3.small",
      "prod" = "t3.large"
    }
}