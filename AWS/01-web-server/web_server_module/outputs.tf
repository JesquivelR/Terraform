# Outputs
output "server_public_ip" {
  description   = "EC2 instance public IP address"
  value         = aws_instance.web-server.public_ip
}
output "server_public_dns" {
  description   = "EC2 instance public DNS"
  value         = aws_instance.web-server.public_dns
}