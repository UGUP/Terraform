#Creating EC2 instance and SSH into it


resource "aws_instance" "Terraform2"{
     ami = "ami-0a6b2839d44d781b2" # us-east-1 
     instance_type = "t2.medium" 
     subnet_id = aws_subnet.public-subnet1.id 
     key_name= "jenkins3" 
     vpc_security_group_ids = [aws_security_group.allow_ssh.id] 
     tags={ 
        Name="terraform-demo" 
        }
}