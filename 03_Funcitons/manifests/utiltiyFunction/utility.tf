# 1. Utilize AWS CLI to get AZs within the region
# aws ec2 describe-instance-type-offerings --location-type availability-zone --filters Name=instance-type,Values=t3.micro --region us-east-1 --output table

# 2. Utilize Datasources to pull in the AZs within a region 
data "aws_ec2_instance_type_offerings" "my_instance_type1" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    # values = ["us-east-1a"]
    values = ["us-east-1e"]
  }

  location_type = "availability-zone"
}

# 3. Utlize the Outputs to detail the response
output "output_v1_1" {
    value = data.aws_ec2_instance_type_offerings.my_instance_type1.instance_types
}