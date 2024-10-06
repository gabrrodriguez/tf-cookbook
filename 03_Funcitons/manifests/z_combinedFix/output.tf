# Data sources
// Get availability zone names
data "aws_availability_zones" "my_azones" {
  filter {
    name = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

data "aws_ec2_instance_type_offerings" "my_instance_type_final" {
  for_each = toset(data.aws_availability_zones.my_azones.names)
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

output "output_v4_1" {
   value = {
        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type_final: az => details.instance_types
    }
}

output "output_v4_2" {
   value = {
        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type_final: 
        az => details.instance_types if length(details.instance_types) !=0 
    }
}

output "output_v4_3" {
   value = keys({
        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type_final: 
        az => details.instance_types if length(details.instance_types) !=0 
    })
}

output "output_v4_4" {
   value = keys({
        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type_final: 
        az => details.instance_types if length(details.instance_types) !=0 
    })[0]
}