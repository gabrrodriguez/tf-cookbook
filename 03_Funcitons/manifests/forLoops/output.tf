# EC2 Instance Public IP with toset
output "instance_publicip" {
    description = "EC2 instance Public IP"
    # value = aws_instance.gjrEC2[*]
    value = toset([ for i in aws_instance.gjrEC2: i.public_ip ])   //the toset funciton here is optional
}

# EC2 instance public dns with toset
output "instance_publicdns" {
    description = "EC2 Instance public DNS"
    # value = aws_instance.gjrEC2[*]
    value = [ for i in aws_instance.gjrEC2: i.public_dns]
}

# EC2 Instance Public DNS with ToMap
output "instance_publicdns2" {
    value = { for az, i in aws_instance.gjrEC2: az => i.public_dns }
    # value = tomap( { for az, i in aws_instance.gjrEC2: az => i.public_dns } )   //Optional to list the tomap function
}