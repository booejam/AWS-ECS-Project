#Create NAT Gateway
resource "aws_nat_gateway" "nat_gw" {
    subnet_id = aws_subnet.primary_public_subnet1.id
    allocation_id = var.eip

    tags = {
      Name = "${var.vpc_name}-ngw"
    }

}