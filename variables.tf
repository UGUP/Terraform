variable "ami"{
    default = "ami-0a6b2839d44d781b2"
}

variable "instancetype" {
  default = "t2.medium"
}

variable "key" {
  default = "jenkins"
}

variable "instanceprofile" {
  default="ec2_profile"
}

variable "bucketname" {
  default="s3-c38"
}

variable "securitygroup" {
  default = "allow_ssh"
}



