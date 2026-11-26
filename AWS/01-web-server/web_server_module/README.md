# Módulo web_server_module

Módulo de Terraform que crea una instancia EC2 con un servidor web, su grupo de seguridad y el par de llaves. Se consume desde `AWS/01-web-server/main.tf` una vez por entorno.

La sección siguiente se genera con `terraform-docs`; no se edita a mano. Para regenerarla:

```bash
terraform-docs markdown table --output-file README.md --output-mode inject AWS/01-web-server/web_server_module
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web-server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.web-server-ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.web-server-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ID de la AMI para la instancia EC2 | `string` | `"ami-0453ec754f44f9a4a"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Entorno de la aplicación (por ejemplo Dev o QA) | `string` | `"Dev"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo de instancia EC2 | `string` | `"t3.micro"` | no |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | Nombre del servidor web | `string` | `"web-server"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_server_public_dns"></a> [server\_public\_dns](#output\_server\_public\_dns) | Nombre DNS público de la instancia EC2 |
| <a name="output_server_public_ip"></a> [server\_public\_ip](#output\_server\_public\_ip) | Dirección IP pública de la instancia EC2 |
<!-- END_TF_DOCS -->
