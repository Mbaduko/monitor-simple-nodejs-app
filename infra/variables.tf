variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "monitor-simple-nodejs-app"
}

variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ssh_allowed_cidrs" {
  description = "CIDR blocks allowed to SSH into the instance (defaults to this PC's public IP)"
  type        = list(string)
  default     = null
}

variable "ssh_key_dir" {
  description = "Local directory where the generated private key is saved"
  type        = string
  default     = "~/.ssh"
}

variable "app_port" {
  description = "Port the Node.js app listens on"
  type        = number
  default     = 3000
}
