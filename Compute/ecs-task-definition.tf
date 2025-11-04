resource "aws_ecs_task_definition" "nginx_task_definition" {
    family          = "nginx-task"
    requires_compatibilities = ["FARGATE"]
    network_mode    = "awsvpc"
    cpu             = 1024 //1vCPU = 1024
    memory          = 2048 //2vRAM = 2048
    execution_role_arn = "arn:aws:iam::262164343409:role/ecsTaskExecutionRole"
    
    container_definitions = jsonencode ([
        {
            name      = "nginx-container"
            image     = "nginx:latest"
            cpu       = 1024
            memory    = 2048
            essential = true
            portMappings = [
                {
                    containerPort = 80
                    hostport      = 80
                    protocol      = "tcp"
                }
            ]
        }
    ])

    tags = {
      Name = var.cluster_name
      Project = var.project_tags 
    }
}

