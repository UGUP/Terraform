resource "aws_iam_instance_profile" "EC2_PROFILE" {
  name="ec2_profile"
  role=aws_iam_role.IAM_ROLE.name
}