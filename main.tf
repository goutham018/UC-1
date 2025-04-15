provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_ids[0]
  key_name      = var.key_name
  instance_type = var.instance_type
  alb_sg_id     = module.security.alb_sg_id
}

module "alb" {
  source              = "./modules/alb"
  alb_name            = "openproject-alb"
  vpc_id              = module.vpc.vpc_id
  subnets             = module.vpc.public_subnet_ids
  security_group_ids  = [module.security.alb_sg_id]
  target_group_name   = "openproject-tg"
  ec2_instance_id     = module.ec2.instance_id
  listener_port       = 80
  target_port         = 8080
}

