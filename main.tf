terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

data "aws_ami" "demo" {
  owners = ["amazon"]

  filter {
    name   = "image-id"
    values = ["ami-0277155c3f0ab2930"]
  }
}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.demo.id
  instance_type = var.instancetype
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
