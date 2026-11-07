# Valores de variables para el ambiente de producción
# Configuración de producción: alta disponibilidad, redundancia, optimización de rendimiento

environment_name = "prod"

# Configuración de red
vpc_cidr           = "10.1.0.0/16"
public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_subnet_cidrs = ["10.1.10.0/24", "10.1.20.0/24", "10.1.30.0/24"]
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

# Configuración de compute
instance_type     = "t3.medium"
instance_count    = 3
instance_ami      = "ami-0c55b159cbfafe1f0"
root_volume_size  = 50

# Configuración de etiquetas
tags = {
  Environment = "production"
  Project     = "notification-service"
  ManagedBy   = "terraform"
  CostCenter  = "notification-platform"
  Compliance  = "PCI-DSS"
}

# Habilitar características de observabilidad
enable_monitoring    = true
enable_logging       = true
log_retention_days   = 90

# Configuración de seguridad
allowed_ssh_cidr     = ["10.1.0.0/16"]
allowed_http_cidrs   = ["0.0.0.0/0"]
enable_waf           = true

# Configuración de alta disponibilidad
multi_az             = true