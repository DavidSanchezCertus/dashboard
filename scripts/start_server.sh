#!/bin/bash
# Detener cualquier proceso que esté usando el puerto 3000
sudo fuser -k 5137/tcp || true
# Iniciar la aplicación
cd /home/ec2-user/dashboard
sudo bash -c "PORT=5137 npm run dev" 
