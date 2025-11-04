# ===============================================
#          DB Networking Variables
# ===============================================
variable "primary_vpc" {
    description = "Primary vpc ID from Networking module"
    type = string
}

variable "primary_private_subnet1" {
    description = "Primary private subnet 1"
}

variable "primary_private_subnet2" {
    description = "Primary private subnet 2"
}

# ===============================================
#          DB Subnet Group Variables
# ===============================================

variable "db_subnet_group_name" {
    description = "subnet group name"
    type = string
    default = "innovation-subnet-group"
}

# ===============================================
#          DB Configuration Variables
# ===============================================
variable "db_name" {
    description = "RDS database name"
    type = string
    default = "Innovation-db"
}
variable "db_allocated_storage" {
    description = "RDS database allocated storage"
    type = number
    default = "10"
}
variable "db_engine" {
    description = "RDS database engine"
    type = string
    default = "oracle-se2"
}
variable "db_engine_version" {
    description = "RDS database engine version"
    type = string
    default = "19.0.0.0.ru-2025–07.rur-2025–07.r1"
}
variable "instance_class" {
    description = "RDS instance class"
    type = string
    default = "db.t3.small"
}
variable "backup_retention_period" {
    description = "RDS Backup Retention Period"
    type = number
    default = "3"
}
variable "db_storage_type" {
    description = "RDS DB storage type"
    type = string
    default = "gp3"
}

# ===============================================
#          DB Credentials Variables
# ===============================================
variable "db_username" {
    description = "RDS master username"
    type = string
    default = "master"
}

# ===============================================
#          DB Security Group Variables
# ===============================================
variable "vpc_security_group_name" {
    description = "VPC Security Group name"
    type = string
    default = "innovation-db-sg"
}

# ===============================================
#                DB ingress rules
# ===============================================
variable "security_group_allowed_public_subnets_ingress_rules" {
    description = "A list of allowed IP ranges from Public Subnets"
    type = list(string)
    default = ["172.0.1.0/24","172.0.2.0/24"]
}

variable "security_group_egress_all" {
    description = "open all range"
    type = string
    default = "0.0.0.0/0"
  
}