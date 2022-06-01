resource "aws_instance" "sample" {
  instance_type = "t3.micro"
  ami           = "ami-0ec3252759130198b"
  vpc_security_group_ids = [aws_security_group.allow_ec2.id]
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-devopsb64"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.14.0"
    }
  }
}