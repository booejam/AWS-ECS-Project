 #Grab variable/ID from Networking module to pass to main.tf
 output "vpc_id" {
    value = aws_vpc.primary_vpc.id
    description = "Get vpc id from vpc.tf"
 }
 #Grab subnet ID
 output "subnet_id" {
   value = aws_subnet.primary_public_subnet1.id
   description = "Get public1 subnet id from subnet.tf"
 }

 output "subnet_id2" {
   value = aws_subnet.primary_public_subnet2.id
   description = "Get Public2 subnet id from subnet.tf"
 }

 output "private_subnet_id" {
   value = aws_subnet.primary_private_subnet1.id
   description = "Get Private subnet id from subnet.tf"
 }

 output "private_subnet_id2" {
   value = aws_subnet.primary_private_subnet2.id
   description = "Get Private2 subnet id from subnet.tf"
 }