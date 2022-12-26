#Managing EC2 instance using Terraform 


resource "aws_instance" "Terraform"{
     ami = var.ami # us-east-1 
     instance_type = var.instancetype
     subnet_id = "subnet-4d33f32b" 
     iam_instance_profile = "Adminaccess"
     key_name= var.key
     vpc_security_group_ids = ["sg-07aaf9d0f9504cd47"] 
     tags={ 
        Name="Test" 
        }
}