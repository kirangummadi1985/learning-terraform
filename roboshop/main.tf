module  "frontend" {
  source        = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI           = "ami-0ec3252759130198b"
  COMPONENT     = "frontend"
}
