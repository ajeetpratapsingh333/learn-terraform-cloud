terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

#data "aws_ami" "demo" {
 # owners = ["amazon"]

#  filter {
 #   name   = "image-id"
 #   values = ["ami-0277155c3f0ab2930"]
 # }
#}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.aws.ami
  instance_type = var.instancetype
  tags = var.tags
  vpc = var.aws.vpc
  security_groups = [ var.aws.sgid ]
  subnet_id = var.aws.subnet
  root_block_device {

      tags = var.tags
      volume_type  = "gp3"
   }
}
