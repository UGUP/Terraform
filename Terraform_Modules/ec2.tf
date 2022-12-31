module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0a6b2839d44d781b2"
  instance_type          = "t2.micro"
  key_name               = "jenk4"
  monitoring             = true
  vpc_security_group_ids = [module.aws_security_group.security_group_vpc_id]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}