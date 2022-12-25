#Creating a VPC
#VPC requires CIDR is Mandatory 

resource "aws_vpc" "VPC" {
  cidr_block = "10.100.0.0/16"

  tags={
    Name="upgrad-vpc"
  }
}