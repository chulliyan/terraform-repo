provider "aws"{
    region = "us-east-1"
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["amazon"]
}

#resource "aws_instance" "example" {
 # ami           = data.aws_ami.ubuntu.id # Amazon Linux 2 AMI
  #instance_type = "t2.micro"

  #tags = {
   # Name = "ExampleInstance"
  #}
  #count = 1
#}
