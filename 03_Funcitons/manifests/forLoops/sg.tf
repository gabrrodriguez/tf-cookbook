# Create a Security Group for SSH
resource "aws_security_group" "vpc-ssh" {
    name = "vpc-ssh"
    description = "Dev VPC SSH"

    ingress {
        description = "Allow port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "Allow all IP and Ports outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
    }

    tags = {
        Name = "vpc-ssh"
    }
}

# Create a Security Group for Web Traffic
resource "aws_security_group" "vpc-web" {
    name = "vpc-web"
    description = "Dev VPC Web"

    ingress {
        description = "Allow http"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allow https"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow all IP and Ports outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
    }

    tags = {
        Name = "vpc-web"
    }
}