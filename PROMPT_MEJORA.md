# Prompt para Mejorar el Codigo Base

Copia y pega el contenido del bloque de abajo en un asistente de IA (Claude, ChatGPT)
para obtener el proyecto completo y arrancable. Guarda los archivos que te devuelva en la
carpeta del repo, respetando exactamente las rutas.

Si preferis trabajar en tu editor con un agente local (Claude Code, Cursor, Copilot), usa `AGENTS.md` en vez de este archivo: dice lo mismo pero para que escriba los archivos en disco.

## Las dos reglas que no se negocian

1. **Completa el boilerplate.** Todo lo que el proyecto necesita para compilar y arrancar: manifiesto de dependencias, punto de entrada, configuracion, capa de interfaz, y las capas del patron arquitectonico declarado. Eso es andamiaje y es tu trabajo.
2. **NO resuelvas el reto.** Los entregables de las fases son el trabajo de la persona. El hueco pedagogico se deja como esta: el proyecto arranca, pero lo que el reto pide implementar NO esta implementado.

Dicho de otra forma: si algo impide compilar, arreglalo. Si algo es logica de negocio incompleta, validaciones ausentes, un secreto hardcodeado o un patron mejorable, dejalo exactamente como esta — es lo que la persona tiene que encontrar.

## Superficie de practica — NO resuelvas

Estos archivos SON el ejercicio de la persona. No los implementes; deja stubs.

- `main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.

## Herramientas

- **Terraform**: Herramienta de trabajo del candidato: usala en la fase donde se depura o se prueba la solucion (no es una dependencia del proyecto).

## Lo que le falta a este proyecto

Esto NO lo tenes que adivinar: salio de comparar el proyecto contra la arquitectura declarada del reto y de un analisis estatico del codigo. Completalo TODO.

### Archivos que la arquitectura del reto declara y no estan

Creálos con implementacion real, en la capa que les corresponde:

- `scripts/build.sh`
- `scripts/healthcheck.sh`

## Como saber que terminaste

```bash
docker build -t reto:local . && terraform -chdir=terraform init -backend=false && terraform -chdir=terraform validate
```

Ese comando corriendo sin errores es la definicion de "listo".

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter DevOps, Especialidad Ingenieria, Tecnología Terraform, Advanced L2

### Brecha de conocimiento
Aprovisionar infraestructura con Terraform (corrida e2e 20261106194239047), Aprovisiona con Terraform la red y el computo del servicio de notificaciones

### Misión / candidato
Versionar la infraestructura del servicio de notificaciones

### Reto
- Tema: Infraestructura como codigo con Terraform
- Seniority: advanced-l2
- Tipo: practical
- Título: Versionado de Infraestructura con Terraform
- Tiempo estimado: 8 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Exploración del Servicio de Notificaciones — objetivo: Comprender la arquitectura actual del servicio de notificaciones y sus dependencias. — entregable (NO resolver): Documentación de la arquitectura actual del servicio de notificaciones.
- Fase 2: Configuración de Terraform para el Servicio de Notificaciones — objetivo: Configurar Terraform para versionar la infraestructura del servicio de notificaciones. — entregable (NO resolver): Archivo de configuración de Terraform para el servicio de notificaciones.
- Fase 3: Ejecución y Verificación de la Configuración — objetivo: Ejecutar la configuración de Terraform y verificar que la infraestructura se aprovisione correctamente. — entregable (NO resolver): Informe de ejecución y verificación de la configuración de Terraform.

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 0 — ¿Esto es un proyecto o una carcasa?
Antes de extraer archivos, leé el Briefing (si está) y diagnosticá el adjunto.

Es CARCASA si ocurre CUALQUIERA de estas:
- No hay manifiesto de dependencias del stack del briefing (manifest.json de VTEX IO / package.json / pom.xml / build.gradle / requirements.txt / go.mod / *.tf / *.csproj, según corresponda)
- Hay un "binario" que en realidad es un comentario ("no puede ser mostrado como texto plano", placeholder .fig/.docx vacío)
- Los markdowns ya completan entregables de fases posteriores ("se implementó fade-in", lista de áreas ya resuelta)

Si es CARCASA:
- MATERIALIZÁ un proyecto que arranca en el stack del briefing (VTEX IO Store Framework, Angular, Terraform, pytest, Nest, etc.). Incluí manifiesto, punto de entrada y capa de interfaz reales.
- NO copies los markdowns de "solución" como si fueran el producto. Son ruido de generación.
- NO resuelvas las fases del briefing (están marcadas PROHIBIDO). Dejá el hueco pedagógico: el flujo existe, las microinteracciones/calidad/infra que el reto pide NO están hechas.
- Después seguí al PASO 5 (entrega de archivos).

Si es un proyecto REAL (manifiesto + código que compila o arranca):
- Seguí PASO 1 en adelante. 🔴 compilación sí. 🟡 pedagógico no.

PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Entrega de archivos
Entregá cada archivo con su ruta completa, respetando exactamente la estructura de rutas
indicada por los marcadores: un bloque por archivo, precedido por su ruta. No generes ZIPs
ni archivos adjuntos.
La entrega debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: Entregá los archivos completos al finalizar. No preguntes si el usuario
quiere recibirlos. Simplemente entregalos; No debes desplegar en el chat el resumen de lo que arreglaste, solo entregá los archivos.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación, placeholders o binarios fake, NO la reproduzcas:
aplicá PASO 0 (materializar el proyecto del briefing). Reproducir la carcasa es un fallo.
No agregues texto después del último archivo entregado
No preguntes si el usuario quiere los archivos: simplemente entregalos siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

// === ARCHIVO: providers.tf ===
# Terraform providers configuration for AWS infrastructure
# This file defines the required providers and their versions for the project.
# The AWS provider is used to interact with AWS services.

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  
  # Tags to apply to all resources
  default_tags {
    tags = {
      Environment = var.environment
      Project     = "notification-service"
      ManagedBy   = "Terraform"
    }
  }
}

# Data source to fetch available AWS availability zones
# This is used to ensure high availability across multiple AZs
data "aws_availability_zones" "available" {
  state = "available"
}

// === ARCHIVO: variables.tf ===
# Input variables for the Terraform configuration
# These variables allow customization of the infrastructure without modifying the main code.

variable "aws_region" {
  description = "The AWS region where the infrastructure will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "instance_type" {
  description = "The EC2 instance type for the compute resources"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "desired_capacity" {
  description = "The desired number of EC2 instances in the auto scaling group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of EC2 instances in the auto scaling group"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "The minimum number of EC2 instances in the auto scaling group"
  type        = number
  default     = 1
}

// === ARCHIVO: modules/network/variables.tf ===
# Input variables for the network module
# These variables allow customization of the network infrastructure.

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "environment" {
  description = "The environment name (dev, staging, prod)"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones to use for subnets"
  type        = list(string)
  default     = []
}

// === ARCHIVO: modules/compute/variables.tf ===
# Input variables for the compute module
# These variables allow customization of the compute resources.

variable "environment" {
  description = "The environment name (dev, staging, prod)"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type for the compute resources"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the compute resources will be deployed"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the load balancer"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for the auto scaling group"
  type        = list(string)
}

variable "desired_capacity" {
  description = "The desired number of EC2 instances in the auto scaling group"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 instances in the auto scaling group"
  type        = number
}

variable "min_size" {
  description = "The minimum number of EC2 instances in the auto scaling group"
  type        = number
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
  default     = ""
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instances"
  type        = list(string)
  default     = []
}

// === ARCHIVO: main.tf ===
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

// === ARCHIVO: outputs.tf ===
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

// === ARCHIVO: .terraform.lock.hcl ===
# This file is maintained by Terraform
# Do not edit manually - run terraform init to update

provider "registry.terraform.io/hashicorp/aws" {
  version     = "5.67.0"
  constraints = "~> 5.0"
  hashes = [
    "h1:8v61n8F6PFrg2V9A6gVlaqhdANji5exd4Z4ydL9LkMo=",
    "h1:znLROwEAHKbL8QDNkcdLAZJ2TqWj3R8Fvi9WXv9wXyM=",
    "zh:0d2b6d46c20b3a3cf8d03c45f1901e7c0a4e2e38e0ab6f8d6c1",
    "zh:0d9f8c7e9c0a1e6e8c5f9a8b7c6d5e4f3a2b1c0d9e8f7a6b5c4",
    "zh:1a3c8e8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4a5b6c7d8e9f0",
    "zh:2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8",
    "zh:3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e",
    "zh:4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f",
    "zh:5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2"
  ]
}


// === ARCHIVO: modules/network/main.tf ===
# Módulo de red para el servicio de notificaciones
# Stub - implementar configuración de VPC, subnets y security groups

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-vpc"
    }
  )
}

resource "aws_subnet" "public" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 4, count.index)
  availability_zone = var.availability_zones[count.index]

  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-public-subnet-${count.index + 1}"
      Type = "public"
    }
  )
}

resource "aws_subnet" "private" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 4, count.index + length(var.availability_zones))
  availability_zone = var.availability_zones[count.index]

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-private-subnet-${count.index + 1}"
      Type = "private"
    }
  )
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-igw"
    }
  )
}

resource "aws_security_group" "notification_sg" {
  name        = "${var.project}-${var.environment}-notification-sg"
  description = "Security group para el servicio de notificaciones"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP desde ALB"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS desde ALB"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Salida a internet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-notification-sg"
    }
  )
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-public-rt"
    }
  )
}

resource "aws_route_table_association" "public" {
  count          = length(aws_subnet.public)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

// === ARCHIVO: modules/network/outputs.tf ===
# Outputs del módulo de red
# Stub - exposing valores para consumo por otros módulos

output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block de la VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "IDs de las subnets públicas"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs de las subnets privadas"
  value       = aws_subnet.private[*].id
}

output "security_group_id" {
  description = "ID del security group del servicio de notificaciones"
  value       = aws_security_group.notification_sg.id
}

output "internet_gateway_id" {
  description = "ID del Internet Gateway"
  value       = aws_internet_gateway.main.id
}

// === ARCHIVO: modules/compute/main.tf ===
# Módulo de compute para el servicio de notificaciones
# Stub - implementar configuración de EC2, ECS o Lambda

locals {
  container_name = "${var.project}-${var.environment}-notification"
}

resource "aws_ecs_cluster" "main" {
  name = local.container_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-ecs-cluster"
    }
  )
}

resource "aws_ecs_task_definition" "notification" {
  family                   = "${var.project}-${var.environment}-notification"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.task_cpu
  memory                   = var.task_memory
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn
  task_role_arn            = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "notification-service"
      image     = "${var.ecr_repository_url}:latest"
      essential = true
      portMappings = [
        {
          containerPort = var.container_port
          protocol      = "tcp"
        }
      ]
      environment = [
        {
          name  = "ENVIRONMENT"
          value = var.environment
        },
        {
          name  = "LOG_LEVEL"
          value = var.log_level
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = "/ecs/${var.project}-${var.environment}"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = var.common_tags
}

resource "aws_ecs_service" "main" {
  name            = "${var.project}-${var.environment}-notification-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.notification.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [var.security_group_id]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.main.arn
    container_name   = "notification-service"
    container_port   = var.container_port
  }

  depends_on = [aws_lb_target_group.main]

  deployment_controller {
    type = "ECS"
  }

  deployment_minimum_healthy_percent = 50
  deployment_maximum_percent         = 200

  enable_execute_command = true

  tags = var.common_tags
}

resource "aws_lb" "main" {
  name               = "${var.project}-${var.environment}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group_id]
  subnets            = var.public_subnet_ids

  enable_deletion_protection = var.environment == "prod" ? true : false

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-alb"
    }
  )
}

resource "aws_lb_target_group" "main" {
  name     = "${var.project}-${var.environment}-tg"
  port     = var.container_port
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  target_type = "ip"

  tags = var.common_tags
}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}

resource "aws_iam_role" "ecs_execution_role" {
  name = "${var.project}-${var.environment}-ecs-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      }
    ]
  })

  tags = var.common_tags
}

resource "aws_iam_role_policy_attachment" "ecs_execution_role_policy" {
  role       = aws_iam_role.ecs_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role" "ecs_task_role" {
  name = "${var.project}-${var.environment}-ecs-task-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      }
    ]
  })

  tags = var.common_tags
}

resource "aws_cloudwatch_log_group" "ecs_logs" {
  name              = "/ecs/${var.project}-${var.environment}"
  retention_in_days = var.log_retention_days

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}-ecs-logs"
    }
  )
}


// === ARCHIVO: modules/compute/outputs.tf ===
# Outputs del módulo de compute
# Superficie de práctica: completar con los outputs necesarios

output "instance_ids" {
  description = "IDs de las instancias EC2 creadas"
  value       = aws_instance.compute.*.id
}

output "instance_public_ips" {
  description = "IPs públicas de las instancias EC2"
  value       = aws_instance.compute.*.public_ip
}

output "security_group_id" {
  description = "ID del security group asociado a las instancias"
  value       = aws_security_group.compute_sg.id
}

output "iam_instance_profile" {
  description = "Nombre del perfil de IAM asociado a las instancias"
  value       = aws_iam_instance_profile.compute_profile.name
}

// === ARCHIVO: environments/dev/terraform.tfvars ===
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

// === ARCHIVO: environments/prod/terraform.tfvars ===
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

```
