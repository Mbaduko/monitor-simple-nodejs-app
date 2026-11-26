variable "name" {
  description = "Prefix used to name compute resources"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC for the security group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet to launch the instance in"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH (optional)"
  type        = string
  default     = null
}

variable "ssh_allowed_cidrs" {
  description = "CIDR blocks allowed to SSH into the instance"
  type        = list(string)
}

variable "app_port" {
  description = "Port the Node.js app listens on"
  type        = number
  default     = 3000
}
