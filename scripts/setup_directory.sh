#!/bin/bash
set -e  # Detener el script si ocurre un error
# Eliminar contenido anterior del directorio
sudo rm -rf /home/ec2-user/dashboard/*
# Crear el directorio si no existe y establecer los permisos
sudo mkdir -p /home/ec2-user/dashboard
sudo chown -R ec2-user:ec2-user /home/ec2-user/dashboard
sudo chmod -R 755 /home/ec2-user/dashboard
sudo chmod +x /home/ec2-user/dashboard/scripts/*
echo "Directorio limpiado y permisos ajustados"