#Create EIP (To be used on NAT Gateway)
resource "aws_eip" "nat_gw_eip" {
    domain = "vpc"

    tags = {
       Name = "${var.primary_vpc}-ngw"
    }
}