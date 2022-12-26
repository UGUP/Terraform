#Choose the provider
terraform{   
required_providers{
    aws={
          source  = "hashicorp/aws"
          version = "~> 4.0"
    }
}

backend "s3" {
    bucket = var.bucketname
    key    = var.key
    region = "us-east-1"
  }

}






