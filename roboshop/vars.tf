variable "COMPONENTS" {
  default = ["frontend", "catalogue", "mongodb"]
}

variable "PORTS" {
  default = ["80", "8080", "27017"]
}