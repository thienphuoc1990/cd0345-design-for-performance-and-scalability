terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "uda-ca-per-scale"
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count         = "4"
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   count         = "2"
#   ami           = "ami-0fc5d935ebf8bc3bc"
#   instance_type = "m4.large"
#   tags = {
#     Name = "Udacity M4"
#   }
# }
