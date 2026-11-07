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