#!/bin/bash
# Detener cualquier proceso que esté usando el puerto 3000
sudo fuser -k 5137/tcp || true
# Iniciar la aplicación
cd /home/ec2-user/dashboard
sudo nohup PORT=5137 npm run dev > /dev/null 2>&1 &
#nohup npm run dev > /dev/null 2>&1 &
sleep 20
if curl -s http://localhost:5137 > /dev/null; then
    echo "Se inició la aplicación en el puerto 5137"
else
    echo "Error: La aplicación fallo"
    exit 1
fi