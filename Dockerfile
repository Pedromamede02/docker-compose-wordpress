FROM wordpress:latest

# Copie o arquivo de configuração personalizado do PHP para o diretório de configurações do PHP
COPY custom-php.ini /usr/local/etc/php/conf.d/

RUN  apt update && apt upgrade 