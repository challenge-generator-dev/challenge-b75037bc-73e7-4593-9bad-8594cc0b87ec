terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuración del provider AWS para la región principal
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Project     = "notificaciones"
      ManagedBy   = "terraform"
    }
  }
}

# Módulo de red para el servicio de notificaciones
module "network" {
  source = "./modules/network"

  environment       = var.environment
  vpc_cidr          = var.vpc_cidr
  availability_zone = var.availability_zone

  tags = var.common_tags
}

# Módulo de compute para el servicio de notificaciones
module "compute" {
  source = "./modules/compute"

  environment          = var.environment
  vpc_id               = module.network.vpc_id
  subnet_ids           = module.network.subnet_ids
  instance_type        = var.instance_type
  key_name             = var.key_name
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
  ami_id               = var.ami_id

  tags = var.common_tags
}