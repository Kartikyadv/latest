output "instance_public_ip" {
  description = "The public IP of the deployed instance."
  value       = aws_instance.example.public_ip
}