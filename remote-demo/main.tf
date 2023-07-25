provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
   count = 3
   ami = "ami-0f5ee92e2d63afc18"
   instance_type = "t2.micro"
   tags = {
      Name = "devops-tf-aws"
}
}
