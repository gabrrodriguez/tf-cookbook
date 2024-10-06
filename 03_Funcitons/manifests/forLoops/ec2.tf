resource "aws_instance" "gjrEC2" {
    ami = data.aws_ami.amzlinux2hvm.id
    instance_type = var.instance_type
    user_data = <<-EOF
                #! /bin/bash
                # Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide

                sudo yum update -y 
                sudo yum install -y httpd
                sudo systemctl enable httpd
                sudo service httpd start 
                sudo echo '<h1>Welcome to sample EC2 from Gabes Terraform Helper files!</h1>' | sudo tee /var/www/html/index.html
                sudo mkdir /var/www/html/app1
                sudo echo '<DOCTYPE html> <html> <body style="background-color:rgb(78, 71, 186);"> <h1>Welcome to Demo App1</h1> <p>Terraform Demo</p> </body> </html>' | sudo tee /var/www/html/app1/index.html
                sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html 
              EOF
    key_name = var.instance_keypair
    vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
    # count = 4   //0,1 
    for_each = toset(data.aws_availability_zones.gjr_AZs.names)
    availability_zone = each.key
    tags = {
        "Name" = "Count Example - ${each.key}"   // this can be each.key or each.value the results are the same
    }
}