resource "tls_private_key" "bastion_key" { // Generate new private key
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "bastion_keypair" { // Create AWS Keypair
    key_name = "bastion-keypair"
    public_key = tls_private_key.bastion_key.public_key_openssh
}

resource "local_file" "private_key_pem" {
    content = tls_private_key.bastion_key.private_key_pem
    filename = "${path.module}/bastion-keypair.pem"
    file_permission = "0600"
}