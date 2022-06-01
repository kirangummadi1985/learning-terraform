//variable "COMPONENTS" {
//  default = ["frontend", "catalogue", "mongodb"]
//}
//
//variable "PORTS" {
//  default = ["80", "8080", "27017"]
//}

variable "COMPONENTS" {
  default = {
    "frontend" = {
      name = "frontend"
      port = 80
    }
    "mongodb" = {
      name = "mongodb"
      port = 27017
    }
    "catalogue" = {
      name = "catalogue"
      port = 8080
    }
  }
}

