output "vpc_id" {
  description = "ID of the VPC"
  value       = module.network.vpc_id
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.compute.instance_id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.compute.public_ip
}
