#!/bin/bash

# Diretório de backup
BACKUP_DIR="/path/to/backup"  # Altere para o diretório desejado
CONFIG_DIR="/etc/nginx"         # Diretório de configuração do Nginx
LOG_DIR="/var/log/nginx"        # Diretório de logs do Nginx

# Cria o diretório de backup se não existir
mkdir -p $BACKUP_DIR

# Data para nomear o backup
DATE=$(date +%F)

# Faz o backup dos arquivos de configuração
tar -czf $BACKUP_DIR/nginx_config_$DATE.tar.gz $CONFIG_DIR

# Faz o backup dos logs
tar -czf $BACKUP_DIR/nginx_logs_$DATE.tar.gz $LOG_DIR

# Remove backups mais antigos que 7 dias
find $BACKUP_DIR -type f -mtime +7 -exec rm {} \;

# Mensagem de conclusão
echo "Backup realizado com sucesso em $BACKUP_DIR!"
