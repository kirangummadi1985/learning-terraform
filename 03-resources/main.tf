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



