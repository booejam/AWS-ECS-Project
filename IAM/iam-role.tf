resource "aws_iam_role" "monitoring_role" { //Create IAM Role
    name = var.monitoring-role

    assume_role_policy = jsonencode({
        version = "2012-10-17"
        statement = [{
            Effect = "Allow"
            Principal = {
                service = "ec2.amazonaws.com"
            }
        }]

    })
}


