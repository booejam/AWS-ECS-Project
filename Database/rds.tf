resource "aws_db_instance" "oracle_db" {
    db_name = var.db_name
    engine = var.db_engine
    engine_version = var.db_engine_version
    multi_az = false
    instance_class = var.instance_class
    allocated_storage = var.db_allocated_storage
    username = var.db_username
    manage_master_user_password = true
    backup_retention_period = var.backup_retention_period
    skip_final_snapshot = true
    publicly_accessible = false
    storage_type = var.db_storage_type
    storage_encrypted = true
    db_subnet_group_name = aws_db_subnet_group.innovation_subnet_group.name
    vpc_security_group_ids = [aws_security_group.innovation_db_sg.id]
}