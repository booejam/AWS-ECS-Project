#Grab variable/ID from Networking module to pass to main.tf
 output "eip_id" {
    value = aws_eip.nat_gw_eip.id
    description = "Get EIP id from elastic-ip.tf"
 }