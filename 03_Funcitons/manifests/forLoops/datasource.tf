data "aws_ami" "amzlinux2hvm" {
    most_recent = true
    owners = [ "amazon" ]
    filter {
      name = "name"
        values = [ "amzn2-ami-kernel-5.10-hvm-*-gp2" ]
    }
    filter {
        name = "root-device-type"
        values = [ "ebs" ]
    }
    filter {
        name = "virtualization-type"
        values = [ "hvm" ]
    }
    filter {
        name = "architecture"
        values = [ "x86_64" ]
    }
}

data "aws_availability_zones" "gjr_AZs" {
    filter {
      name = "opt-in-status"
      values = [ "opt-in-not-required" ]
    }
}