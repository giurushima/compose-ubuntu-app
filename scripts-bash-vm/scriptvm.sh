#!/bin/bash
# Programa para configurar maquina virtual iniciada en DigitalOcean.
# Autor: Gabriel - @giurushima

# Actualizar lista de paquetes
sudo apt update && sudo apt upgrade -y

# Configuracion zona horario en Argentina
timedatectl set-timezone America/Argentina/Buenos_Aires

# Configurar nombre de host
sudo hostname bootcampwebexperto

# Crear usuario sudo
sudo adduser webexpertosudo
sudo usermod -aG sudo webexpertosudo

# Crear usuario para conexion ssh
sudo adduser ssh
sudo addgroup ssh
sudo usermod -aG ssh ssh

# Validar docker e instalar
if apt-mark showinstall | grep -q "^docker"; then
      echo "Docker ya esta instalado"
else
      echo "Instalando Docker"
      sudo apt-get update
      sudo apt-get install ca-certificates curl -y
      sudo install -m 0755 -d /etc/apt/keyrings -y
      sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
      sudo chmod a+r /etc/apt/keyrings/docker.asc

      echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
        $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt-get update
      sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin -y
      snap install docker
      docker --version  
fi

# Validar docker compose e instalar
if apt-mark showinstall | grep -q "^docker-compose-plugin"; then
      echo "Docker Compose ya esta instalado"
else
      echo "Instalando Docker Compose"       
      sudo apt-get update
      sudo apt-get install docker-compose-plugin -y
      docker compose version
fi

# Crear el grupo docker e iniciar el servicio
sudo groupadd docker
sudo usermod -aG docker webexpertosudo
sudo systemctl status docker
sudo systemctl enable docker
sudo systemctl start docker

# Instalar mc
if apt-mark showinstall | grep -q "^mc"; then
      echo "MC (Midnight Commander) ya esta instalado"
else
      echo "Instalando MC (Midnight Commander)"       
      sudo apt-get update
      sudo apt install mc -y
fi

# Instalar vim
if apt-mark showinstall | grep -q "^vim"; then
      echo "Vim ya esta instalado"
else
      echo "Instalando vim (Vi IMproved)"       
      sudo apt-get update
      sudo apt install vim -y
fi

# Instalar net-tools
if apt-mark showinstall | grep -q "^net-tools"; then
      echo "Net-tools ya esta instalado"
else
      echo "Instalando net-tools"       
      sudo apt-get update
      sudo apt install net-tools -y
fi

# Crear usuario nginx con permisos docker
sudo adduser nginx
sudo usermod -aG docker nginx
sudo systemctl status docker
sudo systemctl enable docker
sudo systemctl start docker
