#Creating a Security group for VPC
#Security requires Inbound and outbound rules

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh"
  vpc_id      = aws_vpc.VPC.id

  ingress {
    description      = "SSH into machine"
    from_port        =  22
    to_port          =  22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        =0
    to_port          =0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
