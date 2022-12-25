#Creating public and private subnets

resource "aws_subnet" "public-subnet1" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = "10.100.1.0/24"

  tags = {
    Name = "public-subnet1"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = "10.100.2.0/24"

  tags = {
    Name = "public-subnet2"
  }
}

resource "aws_subnet" "private-subnet1" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = "10.100.3.0/24"

  tags = {
    Name = "private-subnet1"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = "10.100.4.0/24"

  tags = {
    Name = "private-subnet2"
  }
}