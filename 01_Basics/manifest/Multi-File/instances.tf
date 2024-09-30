# Resource Block
resource "aws_instance" "ec2demo" {
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
    tags = {
      "Name": "EC2 Demo"
    }
}