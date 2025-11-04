resource "aws_ecs_cluster" "Izham-Innovation-Cluster" {
    name = var.cluster_name

    tags = {
        Name = var.cluster_name
        Project = var.project_tags
    } 
}