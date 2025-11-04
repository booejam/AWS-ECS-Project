#ECS Security Group
resource "aws_security_group" "ecs_security_group" {
  name        = var.security-group-name
  description = "ECS Innovation security group"
  vpc_id      = var.primary_vpc

  ingress {
    description     = "Allow ALB to reach ECS tasks"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id] # ALB SG
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = var.cluster_name
    Project = var.project_tags
  }
}