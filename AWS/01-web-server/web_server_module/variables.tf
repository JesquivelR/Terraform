# Variables
variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  type        = string
  default     = "ami-0453ec754f44f9a4a"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "server_name" {
  description = "Nombre del servidor web"
  type        = string
  default     = "web-server"
}

variable "environment" {
  description = "Entorno de la aplicación (por ejemplo Dev o QA)"
  type        = string
  default     = "Dev"
}

variable "ssh_allowed_cidrs" {
  description = "Rangos CIDR con acceso SSH al servidor. Por defecto solo una red privada de ejemplo; cámbialo por tu IP, por ejemplo [\"203.0.113.10/32\"]"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}
