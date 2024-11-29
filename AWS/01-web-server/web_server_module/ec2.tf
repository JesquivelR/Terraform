# Resources
resource "aws_instance" "web-server" {
    ami             = var.ami_id
    instance_type   = var.instance_type

    user_data = <<-EOF
                #!bin/bash
                sudo yum install nginx -y
                sudo systemctl enable nginx
                sudo systemctl start nginx
                EOF
    key_name = aws_key_pair.web-server-ssh.key_name
    vpc_security_group_ids = [aws_security_group.web-server-sg.id]

    tags = {
        Name        = var.server_name
        Environment = var.environment
        Owner       = "esquivelrodriguez123@gmail.com"
        Team        = "Devops"
    }
}