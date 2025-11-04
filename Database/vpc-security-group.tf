resource "aws_security_group" "innovation_db_sg" {
    name = var.vpc_security_group_name
    vpc_id = var.primary_vpc

    ingress {
        description = "Allow connection from Primary-VPC public subnet 1"
        from_port = 1521
        to_port = 1521
        protocol = "tcp"
        cidr_blocks = [var.security_group_allowed_public_subnets_ingress_rules[0]]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group_rule" "rds_ingress_public_subnetter_2" {
    description = "Allow connection from Primary-VPC public subnet 2"
    type = "ingress"
    from_port = 1521
    to_port = 1521
    protocol = "tcp"
    cidr_blocks = [var.security_group_allowed_public_subnets_ingress_rules[1]]
    security_group_id = aws_security_group.innovation_db_sg.id
}