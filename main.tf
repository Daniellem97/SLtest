module "networking" {
  source = "./networking"
}

module "compute" {
  source            = "./compute"
  security_group_id = [module.networking.security_group_id]
  subnet_id         = module.networking.subnet_id
  host_os           = var.host_os
  node_name         = "main"
  key_name          = "main_key"
  instance_type     = "t2.micro"
}

module "danielle-dev" {
  source            = "./compute"
  security_group_id = [module.networking.security_group_id]
  subnet_id         = module.networking.subnet_id
  host_os           = var.host_os
  node_name         = "danielle"
  key_name          = "danielle_key"
  instance_type     = "t2.micro"
}

module "kim-dev" {
  source            = "./compute"
  security_group_id = [module.networking.security_group_id]
  subnet_id         = module.networking.subnet_id
  host_os           = var.host_os
  node_name         = "kim"
  key_name          = "kim_key"
  instance_type     = "t2.micro"
}