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