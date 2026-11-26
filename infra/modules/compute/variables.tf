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

variable "ami_ssm_parameter" {
  description = "SSM public parameter holding the AMI ID"
  type        = string
  default     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
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
