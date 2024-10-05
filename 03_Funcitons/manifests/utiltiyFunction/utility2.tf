# Data sources
data "aws_ec2_instance_type_offerings" "my_instance_type2" {
  for_each = toset(["us-east-1a", "us-east-1c", "us-east-1e"])
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    # values = ["us-east-1a"]
    values = [each.key]
  }

  location_type = "availability-zone"
}

# Output
output "output_v2_1" {
    # v1_1 -> value = data.aws_ec2_instance_type_offerings.my_instance_type1.instance_types
    value = [ for type in data.aws_ec2_instance_type_offerings.my_instance_type2: type.instance_types ]
}

output "output_v3_1" {
    value = {
        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type2: az => details.instance_types
    }
}