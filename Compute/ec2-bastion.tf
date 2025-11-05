resource "aws_instance" "ec2_innovation_jumphost" {
    ami = var.amazon-linux-ami
    instance_type = var.ec2-instance-type
    subnet_id = var.primary_public_subnet1
    vpc_security_group_ids = [aws_security_group.ec2_jumphost_sg.id] //bracket becuase terra expect list as it can be attached with many sg
    key_name = aws_key_pair.bastion_keypair.key_name //from ec2-keypair.tf
    iam_instance_profile = var.ec2_monitoring_instance_profile

    tags = {
      Name = var.ec2-bastion-name
    }
}