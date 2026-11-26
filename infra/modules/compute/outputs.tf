output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "private_key_openssh" {
  description = "Private key for SSH access to the instance"
  value       = tls_private_key.this.private_key_openssh
  sensitive   = true
}
