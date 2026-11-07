# Outputs del módulo de red
output "vpc_id" {
  description = "ID de la VPC creada"
  value       = module.network.vpc_id
}

output "vpc_cidr" {
  description = "Bloque CIDR de la VPC"
  value       = module.network.vpc_cidr
}

output "subnet_ids" {
  description = "IDs de las subnets creadas"
  value       = module.network.subnet_ids
}

output "security_group_id" {
  description = "ID del security group para el servicio"
  value       = module.network.security_group_id
}

output "public_subnet_ids" {
  description = "IDs de las subnets públicas"
  value       = module.network.public_subnet_ids
}

# Outputs del módulo de compute
output "asg_name" {
  description = "Nombre del Auto Scaling Group"
  value       = module.compute.asg_name
}

output "asg_arn" {
  description = "ARN del Auto Scaling Group"
  value       = module.compute.asg_arn
}

output "instance_ids" {
  description = "IDs de las instancias en el ASG"
  value       = module.compute.instance_ids
}

output "launch_template_id" {
  description = "ID del Launch Template"
  value       = module.compute.launch_template_id
}

output "instance_profile_arn" {
  description = "ARN del perfil de instancia IAM"
  value       = module.compute.instance_profile_arn
}

# Outputs combinados útiles
output "service_endpoint" {
  description = "Endpoint del servicio de notificaciones"
  value       = "https://notificaciones.${var.environment}.${var.dns_zone}"
}

output "environment_info" {
  description = "Información del entorno desplegado"
  value = {
    environment     = var.environment
    region          = var.aws_region
    vpc_id          = module.network.vpc_id
    asg_name        = module.compute.asg_name
    instance_type   = var.instance_type
    desired_capcity = var.desired_capacity
  }
}