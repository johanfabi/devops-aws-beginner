# main.tf 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = var.region
}

resource "aws_instance" "foo" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.interface_id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}