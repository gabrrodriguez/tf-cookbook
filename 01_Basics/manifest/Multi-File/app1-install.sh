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
