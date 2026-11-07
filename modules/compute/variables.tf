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