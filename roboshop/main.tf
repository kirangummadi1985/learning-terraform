module "common" {
  //count         = length(var.COMPONENTS)
  for_each      = var.COMPONENTS
  source        = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI           = "ami-0ec3252759130198b"
  COMPONENT     = each.value["name"]
  PORT          = each.value["port"]
}


output "leng" {
  value = length(var.COMPONENTS)
}