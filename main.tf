module "Networking" {
  source = "./Networking"
  eip = module.Compute.eip_id
}

module "IAM" {
    source = "./IAM"
}

module "Compute" {
    source = "./Compute"
    primary_vpc = module.Networking.vpc_id
    primary_public_subnet1 = module.Networking.subnet_id
    primary_public_subnet2 = module.Networking.subnet_id2
    ec2_monitoring_instance_profile = module.IAM.ec2_monitoring_instance_profile
}

module "Database" {
  source = "./Database"
  primary_private_subnet1 = module.Networking.private_subnet_id
  primary_private_subnet2 = module.Networking.private_subnet_id2
  primary_vpc = module.Networking.vpc_id
}