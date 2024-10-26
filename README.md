# Projeto de Monitoramento

Este projeto configura uma aplicação de monitoramento usando Nginx, PHP, Prometheus e Grafana. Este README orienta sobre como clonar o repositório, configurar o ambiente e implementar funcionalidades como backup automatizado e CI/CD.

## Sumário

1. [Clonando o Repositório](#clonando-o-repositório)
2. [Configuração do Ambiente](#configuração-do-ambiente)
3. [Backup Automatizado](#backup-automatizado)
4. [Pipeline de CI/CD Integrado](#pipeline-de-cicd-integrado)
5. [Executando a Aplicação](#executando-a-aplicação)

## Clonando o Repositório

Para clonar o repositório, utilize o seguinte comando no terminal:

```
git clone https://github.com/gabrielscostaa/Devops

````

##Configuração do Ambiente

#Certifique-se de ter o Docker e o Docker Compose instalados.

Verifique se o arquivo docker-compose.yml está configurado corretamente com os caminhos e parâmetros necessários.

Backup Automatizado

O script de Backup Automatizado foi implementado para facilitar a criação de cópias de segurança de arquivos ou diretórios importantes. Ele inclui a funcionalidade de rotação de backups para manter apenas os últimos 7 dias de backup, excluindo automaticamente os mais antigos.

##Como Funciona
Configuração de Diretórios:

Define o SOURCE_DIR (diretório ou arquivo a ser feito backup) e BACKUP_DIR (local onde os backups serão armazenados).
Criação do Backup:

Utiliza o comando tar para compactar o conteúdo do SOURCE_DIR em um arquivo .tar.gz, com a data atual no nome do arquivo.
Rotação de Backups:

O script usa o comando find para localizar backups no BACKUP_DIR que foram criados há mais de 7 dias e os exclui automaticamente.
Mensagem de Conclusão:

O script informa ao usuário que o backup foi criado com sucesso e que os backups antigos foram removidos, se necessário.
Como Usar

Para executar o script de backup, utilize o seguinte comando:

 bash backup.sh

Certifique-se de que o script tem permissões de execução:

chmod +x backup.sh


Pipeline de CI/CD Integrado
Para integrar um pipeline de CI/CD ao seu projeto, siga os passos abaixo:

Instalação do Runner:

Instale um Runner do GitHub ou do GitLab em uma máquina local ou em uma nuvem de sua escolha. Este Runner será responsável pela execução dos jobs do pipeline.
Para o GitHub, você pode seguir esta documentação.

Executando a Aplicação

Para iniciar a aplicação, execute o seguinte comando no diretório onde o arquivo docker-compose.yml está localizado:
````
docker-compose up -d
````
Isso iniciará todos os serviços definidos no arquivo Docker Compose em segundo plano. Você pode acessar os serviços nos seguintes endereços:

Nginx: ````http://localhost````
Grafana:```` http://localhost:3000 ````(usuário: admin, senha: sua_senha)
Prometheus: ````http://localhost:9090````


---

Você pode copiar e colar esse conteúdo diretamente no seu repositório no GitHub. Se precisar de mais ajustes ou informações, fique à vontade para pedir!
