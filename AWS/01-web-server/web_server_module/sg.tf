# Security Groups
resource "aws_security_group" "web-server-sg" {
  name        = "${var.server_name}-sg"
  description = "Security Group allowing SSH from trusted ranges and public HTTP"

  tags = {
    Name        = "${var.server_name}-sg"
    Environment = var.environment
    Owner       = "esquivelrodriguez123@gmail.com"
    Team        = "Devops"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  for_each = toset(var.ssh_allowed_cidrs)

  security_group_id = aws_security_group.web-server-sg.id
  description       = "SSH desde un rango de administracion de confianza"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = each.value
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  #checkov:skip=CKV_AWS_260: el servidor web sirve contenido publico por HTTP, por eso el puerto 80 queda abierto a internet
  security_group_id = aws_security_group.web-server-sg.id
  description       = "HTTP publico hacia Nginx"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "https" {
  security_group_id = aws_security_group.web-server-sg.id
  description       = "HTTPS saliente para actualizaciones de paquetes"
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "http" {
  security_group_id = aws_security_group.web-server-sg.id
  description       = "HTTP saliente para los repositorios de paquetes"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}
