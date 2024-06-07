# variables.tf 
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "interface_id" {
  type    = string
  default = "eni-0d1f7b3b3b3b3b3b3"
}