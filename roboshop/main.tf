module  "common" {
  COUNT         = length(var.COMPONENTS)
  source        = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI           = "ami-0ec3252759130198b"
  COMPONENT     = var.COMPONENTS[count.index]
  PORT          = var.PORTS[count.index]
}


