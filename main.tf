module "network" {
  source = "./modules/network"

  vpc_name           = var.vpc_name
  vpc_cidr           = var.vpc_cidr
  subnet_names       = var.subnet_names
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
  igw_name           = var.igw_name
  route_table_name   = var.route_table_name
}

module "network_security" {
  source = "./modules/network_security"

  vpc_id               = module.network.vpc_id
  allowed_ip_range     = var.allowed_ip_range
  ssh_sg_name          = var.ssh_sg_name
  public_http_sg_name  = var.public_http_sg_name
  private_http_sg_name = var.private_http_sg_name
}

module "application" {
  source = "./modules/application"

  vpc_id             = module.network.vpc_id
  subnet_ids         = module.network.subnet_ids
  ssh_sg_id          = module.network_security.ssh_sg_id
  public_http_sg_id  = module.network_security.public_http_sg_id
  private_http_sg_id = module.network_security.private_http_sg_id

  launch_template_name = var.launch_template_name
  instance_type        = var.instance_type

  asg_name         = var.asg_name
  desired_capacity = var.desired_capacity
  min_size         = var.min_size
  max_size         = var.max_size

  lb_name           = var.lb_name
  target_group_name = var.target_group_name
}
