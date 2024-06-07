variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
  default     = "172.16.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC."
  default     = "tf-example"
}

variable "subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
  default     = "172.16.10.0/24"
}

variable "subnet_availability_zone" {
  type        = string
  description = "The availability zone for the subnet."
  default     = "us-east-1a"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
  default     = "tf-example"
}

variable "network_interface" {
  type        = string
  description = "The private IP address for the network interface."
  default     = "172.16.10.100"
}

variable "insterface_name" {
  type        = string
  description = "The name of the network interface."
  default     = "primary_network_interface"
}