variable "aws_region" {
    description = "Default AWS region"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t3.small"
}

variable "instance_keypair" {
    description = "This is the EC2 keypair required for SSH access."
    type=string
    default = "tf-us-east-1"
}

variable "instance_type_list" {
    description = "EC2 instance type list"
    type = list(string)
    default = ["t3.micro", "t3.small", "t3.large"]
}

variable "instance_type_map" {
    description = "EC2 instance type"
    type = map(string)
    default = {
      "dev" = "t3.micro",
      "qa" = "t3.small",
      "prod" = "t3.large"
    }
}