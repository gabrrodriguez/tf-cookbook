# Terraform Output values
output "instance_publicip" {
    description = "The public ip value of the EC2 instance"
    value = aws_instance.myec2vm.public_ip
}

output "instance_publicdns" {
    description = "The DNS value of the EC2 instance"
    value = aws_instance.myec2vm.public_dns
}



