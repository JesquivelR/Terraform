# Generate SSH key
# ssh-keygen -t rsa -b 2048 -f "web-server-key"

resource "aws_key_pair" "web-server-ssh" {
    key_name    = "${var.server_name}-ssh"
    public_key  = file("web-server-key.pub")

    tags = {
        Name        = "${var.server_name}-ssh"
        Environment = var.environment
        Owner       = "esquivelrodriguez123@gmail.com"
        Team        = "Devops"
    }
}