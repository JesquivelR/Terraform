# Proyectos de Terraform

Colección de proyectos de infraestructura como código con Terraform. Cada proyecto vive en su propia carpeta, con su README, su configuración y, cuando aplica, módulos reutilizables.

## Proyectos

| Proyecto | Nube | Descripción |
|----------|------|-------------|
| [01-web-server](./AWS/01-web-server) | AWS | Servidor web con Nginx en EC2, security group con SSH y HTTP, par de llaves y dos entornos (dev y qa) a partir de un mismo módulo. El estado remoto va en S3. |

## Estructura del repositorio

```text
.
├── README.md
└── AWS/
    └── 01-web-server/
        ├── README.md
        ├── architecture.jpg
        ├── main.tf                  # entornos dev y qa y backend S3
        └── web_server_module/       # EC2, security group, llaves y salidas
```

## Requisitos

- Terraform 1.10 o superior.
- AWS CLI con credenciales configuradas (`aws configure`) y permisos sobre EC2, pares de llaves, security groups y el bucket de estado.
- Un par de llaves SSH generado en local; las instrucciones están en el README de cada proyecto.

## Cómo usarlo

1. Clona el repositorio:
   ```bash
   git clone https://github.com/JesquivelR/Terraform.git
   cd Terraform
   ```
2. Entra a la carpeta del proyecto que quieras desplegar. Terraform se ejecuta desde ahí, no desde la raíz:
   ```bash
   cd AWS/01-web-server
   ```
3. Ajusta el backend y las variables según el README del proyecto, y luego:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
4. Cuando termines de probar, elimina los recursos para evitar costos:
   ```bash
   terraform destroy
   ```

## Costos

Los proyectos crean recursos reales en AWS (instancias EC2 y su tráfico de red). Una instancia `t3.medium` encendida todo el mes cuesta del orden de decenas de dólares; si es solo una prueba, destruye los recursos al terminar.

## Contacto

- GitHub: [JesquivelR](https://github.com/JesquivelR)
- LinkedIn: [esquivelrodriguez123](https://linkedin.com/in/esquivelrodriguez123)
