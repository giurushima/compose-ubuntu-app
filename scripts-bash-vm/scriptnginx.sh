#!/bin/bash
# Programa para clonacion de repositorio de PeladoNerd - TU SITIO CON SSL GRATIS EN DOCKER - Nginx Proxy (YouTube) (Opcional).
# Autor: Gabriel - @giurushima

# Instalar git
sudo apt install git -y
git config --global user.name "giurushima"
git config --global user.email "giurushima@hotmail.com"

# 4: Clonar repositorio con user nginx
git clone https://github.com/pablokbs/peladonerd.git
