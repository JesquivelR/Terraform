# Resources
resource "aws_instance" "web-server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  user_data              = <<-EOF
                #!bin/bash
                sudo yum install nginx -y
                sudo systemctl enable nginx
                sudo systemctl start nginx
                EOF
  key_name               = aws_key_pair.web-server-ssh.key_name
  vpc_security_group_ids = [aws_security_group.web-server-sg.id]

  # Solo IMDSv2: exige token de sesión para leer los metadatos de la instancia
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  ebs_optimized = true
  monitoring    = true

  root_block_device {
    encrypted   = true
    volume_type = "gp3"
  }

  tags = {
    Name        = var.server_name
    Environment = var.environment
    Owner       = "esquivelrodriguez123@gmail.com"
    Team        = "Devops"
  }
}