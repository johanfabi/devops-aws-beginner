# Terraform Lab

## Prerequisites
1. [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. [AWS Account](https://aws.amazon.com/)
3. [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
4. [AWS IAM User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)

## Configurar credenciales AWS CLI

#### Vía AWS CLI
Para configurar `credenciales vía AWS CLI` debemos tener previamente creada una cuenta creada en [Crear cuenta AWS](https://aws.amazon.com/) y generar el token de acceso con las siguientes instrucciones [Crear Token AWS](https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-authentication-short-term.html).

Una vez hemos creado y generado el token de acceso, continuamos con los siguientes pasos:

```
aws configure

AWS Access Key ID [None]: <value>
AWS Secret Access Key [None]: <value>
Default region name [None]: us-west-2
Default output format [None]: json
```
Si queremos revocar o editar estas credenciales podemos ejecutar nuevamente el comando  `aws configure` o abrir el archivo `~/.aws/credentials`

#### Como variables de ambiente (Recomendada)
Declaramos las [variables de ambiente](https://docs.aws.amazon.com/es_es/cli/v1/userguide/cli-configure-envvars.html) con los siguientes comandos:
```
export AWS_ACCESS_KEY_ID=<value>

export AWS_SECRET_ACCESS_KEY=<value>

export AWS_DEFAULT_REGION=us-west-2
```

#### Como variables de ambiente para Terraform
Primero declaramos las variables de ambiente con los siguientes comandos:

```
export TF_VAR_access_key="<value>"

export TF_VAR_secret_key="<value>"
```

Luego en el archivo `varibles.tf` del módulo declaramos las siguientes variables:
```
variable "access_key" {
    type        = string
    description = "AWS Access Key."
}

variable "secret_key" {
    type        = string
    description = "AWS Secret Access Key."
}
```

Y las usamos en el archivo `main.tf` en el bloque de `provider`.
```
provider "aws" {
	region = "eu-west-3"
	access_key = var.my_access_key
	secret_key = var.my_secret_key
}
```

## Terraform format and validate commands
1. Validate the configuration files in a directory
```bash
terraform validate
```

2. Format the configuration files in a directory
```bash
terraform fmt
```

## Terraform execution commands
1. Initialize a working directory containing Terraform configuration files
```bash
terraform init
```

2. Generate and show an execution plan
```bash
terraform plan
```

3. Builds or changes infrastructure
```bash
terraform apply
```

4. Destroy Terraform-managed infrastructure
```bash
terraform destroy
```

## Terraform state commands
1. Show the current state or a saved plan
```bash
terraform show
```

2. Output the state of the resources
```bash
terraform output
```

3. Import existing infrastructure into Terraform
```bash
terraform import
```

4. Refresh the state of the resources
```bash
terraform refresh
```

