FROM ubuntu:latest

# Actualizar repositorios
RUN apt-get update

# Instalar Ansible
RUN apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible

# Instalar Python 3.7 y pip
RUN apt-get install -y \
    python3.7 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Instalar nano
RUN apt-get update && apt-get install -y nano

# Copiar los playbooks al contenedor
COPY . /ansible

# Establecer el directorio de trabajo
WORKDIR /ansible
