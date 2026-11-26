locals {
  name = "${var.project_name}-${var.environment}"
}

module "network" {
  source = "./modules/network"

  name               = local.name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
}

module "compute" {
  source = "./modules/compute"

  name              = local.name
  vpc_id            = module.network.vpc_id
  subnet_id         = module.network.public_subnet_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  ssh_allowed_cidrs = var.ssh_allowed_cidrs
  app_port          = var.app_port
}
