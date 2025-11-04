#Create Internet Gateway (IGW)
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.primary_vpc.id

    tags = {
        Name = "${var.vpc_name}-igw"
    }
}