resource "aws_instance" "ec2" {
  instance_type          = var.INSTANCE_TYPE
  ami                    = var.AMI
  vpc_security_group_ids = [aws_security_group.allow_ec2.id]
  tags = {
    Name = var.COMPONENT
  }
}

