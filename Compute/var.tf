variable "primary_vpc" {
    description = "Primary vpc, taken from main.tf from Networking output"
    type  = string
}

# Cluster name
variable "cluster_name" {
    description = "The name of cluster"
    type = string
    default = "Izham-Innovational-Cluster"
}
# Tagging for Project
variable "project_tags" {
    description = "Project naming for tagging"
    type = string
    default = "Innovation"
}
variable "primary_public_subnet1" {
    description = "Primary public subnet 1 ID"
    type = string
}

variable "primary_public_subnet2" {
  description = "Primary public subnet 2 ID"
  type = string
}

#Security Group Name
variable "security-group-name" {
    description = "ecs-security-group"
    type = string
    default = "ecs-security-group"
}

#===================================================
#              EC2 Configuration Variable
#===================================================
#EC2 Jump Host Security Group
variable "ec2-bastion-name" {
    description = "EC2 Bastion host instance name"
    type = string
    default = "innovation-bastion-host"
}
#EC2 AMI for Amazon Linux
variable "amazon-linux-ami" {
    description = "amazon linux 2024 kernel-6.1 AMI"
    type = string
    default = "ami-0609186b60570e9c9"
}
#EC2 Instance Type for Jump Host
variable "ec2-instance-type" {
    description = "EC2 Bastion instance type variable"
    type = string
    default = "t2.micro"
}
#EC2 Jump Host Security Group
variable "ec2-security-group-name" {
    description = "Bastion security group name"
    type = string
    default = "innovation-bastion-sg"
}
variable "ec2_monitoring_instance_profile" {
    description = "ec2 monitoring role from IAM module"
    type = string
} 