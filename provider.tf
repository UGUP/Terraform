#Choose the provider
terraform{   
required_providers{
    aws={
          source  = "hashicorp/aws"
          version = "~> 4.0"
    }
}

backend "s3" {
    bucket = "s3-c38"
    key    =  "state/terraform.tfstate"
    region = "us-east-1"
  }

}






