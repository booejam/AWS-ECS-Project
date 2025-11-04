# VPC Section
variable "vpc_name" {
    description = "The name of the VPC"
    type = string
    default = "primary_vpc"
}
variable "cidr_block" {
    description = "CIDR range for the VPC"
    type = string
    default = "172.0.0.0/16"

# Subnets CIDR Section
}
variable "public_subnet1_cidr" {
    description = "CIDR range for the Public Subnet"
    type = string
    default = "172.0.1.0/24"
}
variable "public_subnet2_cidr" {
    description = "CIDR range for the Public Subnet"
    type = string
    default = "172.0.2.0/24"
}
variable "private_subnet1_cidr" {
    description = "CIDR range for the Private Subnet1"
    type = string
    default = "172.0.3.0/24"
}
variable "private_subnet2_cidr" {
    description = "CIDR range for the Private Subnet2"
    type = string
    default = "172.0.4.0/24"
}

#Availability Zones (defined in main as 0,1,2)
variable "azs" {
    description = "Availability zones"
    type = list(string)
    default = ["ap-southeast-1a", "ap-southeast-1b"]
}

#elastic IP ID from Compute Module
variable "eip" {
    description = "elastic IP ID"
    type = string
}