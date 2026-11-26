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
