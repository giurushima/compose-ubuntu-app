#!/bin/bash
# Programa para crear usuario con permisos de docker (Opcional).
# Autor: Gabriel - @giurushima

# Creacion de usuario "userdocker" con permisos de Docker.
sudo adduser userdocker
sudo usermod -aG userdocker docker
sudo systemctl status docker
sudo systemctl enable docker
sudo systemctl start docker

