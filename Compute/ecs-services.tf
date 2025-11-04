resource "aws_ecs_service" "nginx-service" {
    name                 = "${var.project_tags}-service"
    cluster              = aws_ecs_cluster.Izham-Innovation-Cluster.id
    task_definition      = aws_ecs_task_definition.nginx_task_definition.arn
    desired_count        = 1
    launch_type          = "FARGATE"

  
    network_configuration {
      subnets            = [var.primary_public_subnet1, var.primary_public_subnet2]
      security_groups    = [aws_security_group.ecs_security_group.id]
      assign_public_ip = true

    }

    load_balancer {
      target_group_arn = aws_lb_target_group.ecs-loadbalancer-tg.arn
      container_name = "nginx-container"
      container_port = 80
    }

    depends_on = [aws_lb_listener.ecs_listener]

    tags = {
      Name = var.cluster_name
      Project = var.project_tags
    }

}