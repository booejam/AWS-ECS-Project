output "ec2_monitoring_instance_profile" {
  value = aws_iam_instance_profile.ec2_monitoring_profile.name
  description = "IAM Instance profile for EC2 instance"
}