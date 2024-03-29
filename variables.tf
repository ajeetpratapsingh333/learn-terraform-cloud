variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "instancetype" {
  description = "Type of VM instance to provision"
  default     = "t2.micro"
}

variable "tags" {
  type = map(string)
  default = {
    "project" =  "infra",
    "subproject" = "infra",
    "env" = "nonprod",
    "subenv" = "dev"
  }
}

variable "aws" {
  type = map(string)
  default = {
      vpcid = "vpc-054be7e773d4734fe"
      ami = "ami-075491ab3df78dd2d"
      subnet = "subnet-0f7658858b7d17e6d"
      sgid = "sg-0f0850ac7d25e125f"
    }
}
