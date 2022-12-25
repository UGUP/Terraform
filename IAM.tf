resource "aws_iam_role_policy" "ECR" {
  name = "ECR"
  role = aws_iam_role.IAM_ROLE.id
  policy= "${file("ecr-ploicy.json")}"

}

resource "aws_iam_role_policy" "S3" {
  name = "S3"
  role = aws_iam_role.IAM_ROLE.id
  policy= "${file("s3-ploicy.json")}"

}

resource "aws_iam_role" "IAM_ROLE" {
  name = "IAM_ROLE"
  assume_role_policy="${file("role.json")}"

}

