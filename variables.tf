variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instancetype" {
  description = "Type of VM instance to provision"
  default     = "t2.micro"
}

variable "tags" {
  type = map(string)
  default = {
    "project" =  "test",
    "subproject" = "test",
    "env" = "dev",
    "subenv" = "dev"
  }
}

variable "aws" {
  type = map(string)
  vpcid = "vpc-054be7e773d4734fe"
  amiid = "ami-075491ab3df78dd2d"
  subnet = "subnet-0f7658858b7d17e6d"
}
