#Creating S3 bucket

resource "aws_s3_bucket" "upma" {
  bucket = "upma"
  tags = {
    Name        = "upma"
    Environment = "Dev"
  }
}
