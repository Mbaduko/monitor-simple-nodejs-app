data "http" "my_ip" {
  url = "https://checkip.amazonaws.com"
}

locals {
  name              = "${var.project_name}-${var.environment}"
  my_ip_cidr        = "${chomp(data.http.my_ip.response_body)}/32"
  ssh_allowed_cidrs = coalesce(var.ssh_allowed_cidrs, [local.my_ip_cidr])
  private_key_path  = pathexpand("${var.ssh_key_dir}/${local.name}.pem")
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
  ssh_allowed_cidrs = local.ssh_allowed_cidrs
  app_port          = var.app_port
}

resource "local_sensitive_file" "private_key" {
  content         = module.compute.private_key_openssh
  filename        = local.private_key_path
  file_permission = "0400"
}
