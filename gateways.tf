#Creating NAT gateway for Private subnets created in Public subnet
#It requires Elastic IP and also Public subnet

#EIP is associated to instance
resource "aws_eip" "EIP" {
  vpc      = true
}

resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.EIP.id
  subnet_id     = aws_subnet.public-subnet1.id

  tags = {
    Name = "upgrad-nat"
  }

}

# Creating IGW resource using VPC 

  resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.VPC.id

  tags = {
    Name = "upgrad-igw"
  }
}
