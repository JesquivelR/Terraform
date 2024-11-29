# tfstate
terraform {
  backend "s3" {
    bucket = "bucket-terraform-jesquivelr"
    key = "terraform-jesquivelr/terraform.tfstate"
    region = "us-east-1"
    
  }
}


# Modules 
# Dev Environment
module "web_server_dev" {
    source = "./web_server_module"

    ami_id = "ami-0453ec754f44f9a4a"
    instance_type = "t3.medium"
    server_name = "web-server-dev"
    environment = "Dev"
}

# Outputs
output "server_dev_ip" {
  description   = "EC2 instance public IP address"
  value         = module.web_server_dev.server_public_ip
}
output "server_dev_dns" {
  description   = "EC2 instance public DNS"
  value         = module.web_server_dev.server_public_dns
}

# Dev Environment
module "web_server_qa" {
    source = "./web_server_module"

    ami_id = "ami-0453ec754f44f9a4a"
    instance_type = "t3.medium"
    server_name = "web-server-qa"
    environment = "QA"
}

# Outputs
output "server_qa_ip" {
  description   = "EC2 instance public IP address"
  value         = module.web_server_qa.server_public_ip
}
output "server_qa_dns" {
  description   = "EC2 instance public DNS"
  value         = module.web_server_qa.server_public_dns
}