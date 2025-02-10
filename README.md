# <img width="120px" align="right" src="https://github.com/user-attachments/assets/7732e00e-fab4-4371-9b8d-cb1cf8df7d7c">  <h1 align="center"> Ambiente de desenvolvimendo Docker para IONIC </h1>

# 📋 Resumo
Este README apresenta um ambiente de desenvolvimento Docker configurado para projetos utilizando Ionic e Angular. Essa configuração foi elaborada para uma apresentação acadêmica, destacando a facilidade de configuração e isolamento do ambiente.

# Apresentação
[DOCKER](https://github.com/user-attachments/files/18738969/DOCKER.2.pdf)
## Dockerfile



* A imagem base utilizada é o node:lts. Configuramos variáveis de ambiente e instalamos dependências necessárias, como OpenJDK e Gradle.

* Instalação do OpenJDK 17 para suporte ao ambiente de build Android.

* Download e configuração do Gradle 7.3.

* Instalação global das versões desejadas do Angular CLI e Ionic CLI.

* Definição do diretório de trabalho /app.

## docker-compose.yml
Configura o serviço app, expondo a aplicação na porta 80.

* Montagem do volume atual (.) em /app para refletir alterações automaticamente no contêiner.

* Exposição da porta 80:80.

## Construir a imagem Docker
$ docker-compose build

## Executar o contêiner
$ docker-compose up


