variable "environment" {
  description = "The environment for the remote backend (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "The name of the project for the remote backend"
  type        = string
  default     = "monitor-simple-nodejs-app"
}

variable "aws_region" {
  description = "The AWS region for the remote backend"
  type        = string
}