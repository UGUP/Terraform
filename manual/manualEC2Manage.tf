#Managing EC2 instance using Terraform 


resource "aws_instance" "Terraform"{
     ami = var.ami # us-east-1 
     instance_type = var.instancetype
     subnet_id = aws_subnet.public-subnet1.id 
     iam_instance_profile = aws_iam_instance_profile.EC2_PROFILE.name
     key_name= var.key
     vpc_security_group_ids = [aws_security_group.allow_ssh.id] 
     tags={ 
        Name="terraform-demo" 
        }
}