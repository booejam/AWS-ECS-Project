resource "aws_iam_instance_profile" "ec2_monitoring_profile" {
    name = var.instance-profile-name
    role = aws_iam_role.monitoring_role.name
}