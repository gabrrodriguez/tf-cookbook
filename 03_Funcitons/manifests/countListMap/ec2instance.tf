resource "aws_instance" "myec2vm" {
    ami = data.aws_ami.amzlinux2.id
    # instance_type = var.instance_type
    instance_type = var.instance_type_list[1]     //Syntax for List
    # instance_type = var.instance_type_map["prod"]   //Syntax for Map
    user_data = file("${path.module}/app1-install.sh")
    key_name = var.instance_keypair
    vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
    count = 2   //0,1 
    tags = {
        "Name" = "Count Example - ${count.index}"
    }
}

/* Drawbacks of using `count`
- resource instances are identified using index numbers instead of strings
- if an element is removed from the middle of the list, every downstream instance would have an changed value
*/