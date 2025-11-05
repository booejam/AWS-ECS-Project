#==================================
#   Attach Policies to IAM Role
#==================================
resource "aws_iam_role_policy_attachment" "ssm_policy" {
    role       = aws_iam_role.monitoring_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_role_policy_attachment" "cloudwatch_policy" {
    role = aws_iam_role.monitoring_role.name
    policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}


