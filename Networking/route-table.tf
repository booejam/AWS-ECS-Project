#Route Table 
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.primary_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id   
    }

    tags = {
        Name = "${var.vpc_name}-Public-RT"
    }
}
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.primary_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gw.id 
    }

    tags = {
        Name = "${var.vpc_name}-Private-RT"
    }
}