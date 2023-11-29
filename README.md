# Orquestração de Contêineres na AWS com Terraform, Docker e ECS

Bem-vindo ao repositório dedicado à orquestração eficiente de contêineres na Amazon Web Services (AWS) utilizando Terraform, Docker e ECS (Elastic Container Service).

## Overview

Este projeto visa simplificar a implementação e gestão de contêineres na AWS, aproveitando as seguintes tecnologias:

- **Terraform:** Infraestrutura como código para provisionar recursos AWS necessários.
- **Docker:** Contêinerização de aplicações para garantir ambientes consistentes.
- **ECS (Elastic Container Service):** Orquestração de contêineres na AWS com escalonamento automático e facilidade de gerenciamento.

## Como Começar

Certifique-se de ter o Terraform instalado localmente e configurado com suas credenciais AWS.

1. Clone este repositório:

    ```bash
    git clone https://github.com/titi0001/aws-ecs-terraform-docker.git
    ```

2. Navegue até o diretório do projeto:

    ```bash
    cd aws-ecs-terraform-docker
    ```

3. Personalize as variáveis no arquivo `terraform.tfvars` de acordo com suas necessidades.

4. Inicialize o projeto Terraform:

    ```bash
    terraform init
    ```

5. Aplique as configurações para criar a infraestrutura:

    ```bash
    terraform apply
    ```

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues, propor melhorias ou enviar pull requests. Certifique-se de seguir as diretrizes de contribuição.

## Licença

Este projeto é licenciado sob a [Licença MIT](LICENSE).
