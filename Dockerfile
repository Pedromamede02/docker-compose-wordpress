# Dockerfile

FROM wordpress:6.8.1-php8.2-apache


# Copie o arquivo de configuração personalizado do PHP para o diretório de conf>
COPY custom-php.ini /usr/local/etc/php/conf.d/

# Atualize os pacotes
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*