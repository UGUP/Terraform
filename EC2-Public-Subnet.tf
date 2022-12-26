#Creating EC2 instance and SSH into it


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

output "EC2_IP_ADDRESS_OF_PUBLIC" {
  value=aws_instance.Terraform.associate_public_ip_address
}