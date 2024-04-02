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
    "subenv" = "dev",
    "fy" = "fy23"
  }
}

variable "aws" {
  type = map(string)
  default = {
      vpcid = "vpc-054be7e773d4734fe"
      ami = "ami-0b29d5ce39c9e44e8"
      subnet = "subnet-0e842f0bcf40ff5e8"
      sgid = "sg-0f0850ac7d25e125f"
    }
}
