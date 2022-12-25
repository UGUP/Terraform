#Creating EC2 instance in private subnet and SSH into it using EC2 in public
#subnet


resource "aws_instance" "Terraform2"{
     ami = "ami-0a6b2839d44d781b2" # us-east-1 
     instance_type = "t2.medium" 
     subnet_id = aws_subnet.private-subnet1.id 
     key_name= "jenkins3" 
     iam_instance_profile = aws_iam_instance_profile.EC2_PROFILE.name
     vpc_security_group_ids = [aws_security_group.allow_ssh.id] 
     tags={ 
        Name="terraform-demo-private" 
        }
}