terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

provider "aws" {
region = "us-east-2"
}
resource "aws_instance" "myawsserver" {
  ami = "ami-0e1a3a59369c81682"
  instance_type = "t2.micro"
  key_name = "vijay-import"

  tags = {
    Name = "raman-DevOps-batch-server"
    env = "Production"
    owner = "Raman"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /tmp/inv"
  }
}

