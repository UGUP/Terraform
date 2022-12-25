#Creating a rouble table 
#Asscociating it to Public subnet (allowing traffic through igw)

resource "aws_route_table" "route-public" {
  vpc_id = aws_vpc.VPC.id
   
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags={
    Name="public-route-table"
  }

}

#Asscociating public subnet1 and public subnet2 with the public route table

resource "aws_route_table_association" "public-route-association-public-1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.route-public.id
}

resource "aws_route_table_association" "public-route-association-2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.route-public.id
}


#Creating a private route table Using NAT gateway

resource "aws_route_table" "route-private" {
  vpc_id = aws_vpc.VPC.id
   
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT.id
  }
  tags={
    Name="private-route-table"
  }

}


#Asscociating private subnet1 and private subnet2 with the private route table

resource "aws_route_table_association" "private-route-association-1" {
  subnet_id      = aws_subnet.private-subnet1.id
  route_table_id = aws_route_table.route-private.id
}

resource "aws_route_table_association" "private-route-association-2" {
  subnet_id      = aws_subnet.private-subnet2.id
  route_table_id = aws_route_table.route-private.id
}