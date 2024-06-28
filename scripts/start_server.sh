#!/bin/bash
# Detener cualquier proceso que esté usando el puerto 3000
sudo fuser -k 5137/tcp || true
# Iniciar la aplicación
cd /home/ec2-user/san-backend
nohup npm start > /dev/null 2>&1 &
sleep 5
if curl -s http://localhost:5137 > /dev/null; then
    echo "Se inicio la aplicación"
else
    echo "Error: La aplicación fallo"
    exit 1
fi