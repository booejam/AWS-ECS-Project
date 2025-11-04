#Create Subnets (Public and Private)
resource "aws_subnet" "primary_public_subnet1" {
    vpc_id = aws_vpc.primary_vpc.id
    cidr_block = var.public_subnet1_cidr
    availability_zone = var.azs[0]
    map_public_ip_on_launch = true

    tags = {
      "Name" = "${var.vpc_name}-Public-1"
    }
}
resource "aws_subnet" "primary_public_subnet2" {
    vpc_id = aws_vpc.primary_vpc.id
    cidr_block = var.public_subnet2_cidr
    availability_zone = var.azs[1]
    map_public_ip_on_launch = true

    tags = {
      "Name" = "${var.vpc_name}-Public-2"
    }
}
resource "aws_subnet" "primary_private_subnet1" {
    vpc_id = aws_vpc.primary_vpc.id
    cidr_block = var.private_subnet1_cidr
    availability_zone = var.azs[0]

    tags = {
      "Name" = "${var.vpc_name}-Private-1"
    }
}
resource "aws_subnet" "primary_private_subnet2" {
    vpc_id = aws_vpc.primary_vpc.id
    cidr_block = var.private_subnet2_cidr
    availability_zone = var.azs[1]

    tags = {
      "Name" = "${var.vpc_name}-Private-2"
    }
}