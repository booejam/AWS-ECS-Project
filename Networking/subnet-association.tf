#Associating Subnets to a Route Table
// Public subnets
resource "aws_route_table_association" "primary_public_rt_association1" {
    subnet_id = aws_subnet.primary_public_subnet1.id
    route_table_id = aws_route_table.public_rt.id
}
resource "aws_route_table_association" "primary_public_rt_association2" {
    subnet_id = aws_subnet.primary_public_subnet2.id
    route_table_id = aws_route_table.public_rt.id
}
// Private subnets
resource "aws_route_table_association" "primary_private_rt_association1" {
    subnet_id = aws_subnet.primary_private_subnet1.id
    route_table_id = aws_route_table.private_rt.id
}
resource "aws_route_table_association" "primary_private_rt_association2" {
    subnet_id = aws_subnet.primary_private_subnet2.id
    route_table_id = aws_route_table.private_rt.id
}