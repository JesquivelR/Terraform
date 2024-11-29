# Variables
variable "ami_id" {
  description   = "ID ami for EC2 instance"
  default       = "ami-0453ec754f44f9a4a" 
}

variable "instance_type" {
  description   = "EC2 instance type"
  default       = "t3.micro"   
}

variable "server_name" {
  description   = "Web server name"
  default       = "web-server"
}

variable "environment" {
  description   = "Aplication environment"
  default       = "Dev"
}