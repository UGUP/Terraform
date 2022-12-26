#Creating EC2 instance in private subnet and SSH into it using EC2 in public
#subnet


resource "aws_instance" "Terraform2"{
     ami = var.ami # us-east-1 
     instance_type = var.instancetype
     subnet_id = aws_subnet.private-subnet1.id 
     key_name= var.key
     iam_instance_profile = aws_iam_instance_profile.EC2_PROFILE.name
     vpc_security_group_ids = [aws_security_group.allow_ssh.id] 
     tags={ 
        Name="terraform-demo-private" 
        }
}


output "EC2_IP_ADDRESS_OF_PRIVATE" {
  value=aws_instance.Terraform2.associate_public_ip_address
}


