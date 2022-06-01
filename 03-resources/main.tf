resource "aws_instance" "sample" {
  instance_type = "t3.micro"
  ami           = "ami-0ec3252759130198b"
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.14.0"
    }
  }
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.sample.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.sample.public_ip
}



