# Valores de variables para el ambiente de desarrollo
# Configuración optimizada para desarrollo: menor escala, menor costo

environment_name = "dev"

# Configuración de red
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.10.0/24", "10.0.20.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]

# Configuración de compute
instance_type     = "t3.micro"
instance_count    = 1
instance_ami      = "ami-0c55b159cbfafe1f0"
root_volume_size  = 20

# Configuración de etiquetas
tags = {
  Environment = "development"
  Project     = "notification-service"
  ManagedBy   = "terraform"
  CostCenter  = "devops"
}

# Habilitar características de observabilidad
enable_monitoring    = false
enable_logging       = true
log_retention_days   = 7

# Configuración de seguridad
allowed_ssh_cidr     = ["10.0.0.0/16"]
allowed_http_cidrs   = ["10.0.0.0/16"]
enable_waf           = false

# Configuración de alta disponibilidad
multi_az             = false