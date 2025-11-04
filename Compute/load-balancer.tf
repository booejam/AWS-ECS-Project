# ALB Security Group
resource "aws_security_group" "alb_sg" {
  name        = "${var.cluster_name}-alb-sg"
  description = "Allow HTTP inbound"
  vpc_id      = var.primary_vpc

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Application Load Balancer
resource "aws_lb" "ecs_alb" {
  name               = "${var.cluster_name}-alb"
  load_balancer_type = "application"
  subnets            = [var.primary_public_subnet1,
                        var.primary_public_subnet2]
  security_groups    = [aws_security_group.alb_sg.id]
}

#ALB Target group
resource "aws_lb_target_group" "ecs-loadbalancer-tg" {
  name        = "Innovation-Cluster-ALB"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.primary_vpc

  health_check {
    path = "/"
    interval = 30
    timeout = 5
    healthy_threshold = 2
    unhealthy_threshold = 2
  }
}

# Listener
resource "aws_lb_listener" "ecs_listener" {
  load_balancer_arn = aws_lb.ecs_alb.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.ecs-loadbalancer-tg.arn
  }
}