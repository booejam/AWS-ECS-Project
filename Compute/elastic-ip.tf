#Create EIP (To be used on NAT Gateway)
resource "aws_eip" "nat_gw_eip" {
    domain = "vpc"

    tags = {
       Name = "${var.primary_vpc}-ngw"
    }
}

# Create EIP for Bastion Host
resource "aws_eip" "bastion_eip" {
    domain = "vpc"

    tags = {
      Name = "${var.ec2-bastion-name}-eip"
    }
}