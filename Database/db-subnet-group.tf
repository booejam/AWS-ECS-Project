resource "aws_db_subnet_group" "innovation_subnet_group" {
    name = var.db_subnet_group_name
    subnet_ids = [
        var.primary_private_subnet1,
        var.primary_private_subnet2
        ]
    
    tags = {
        Name = var.db_name
    }
}