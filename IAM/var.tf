variable "monitoring-role" {
    description = "Name of IAM role"
    type = string
    default = "monitoring-role"
}

variable "instance-profile-name" {
    description = "Name of instance profile - ec2 monitoring role"
    type = string
    default = "ec2-monitoring-role"
}



