#!/bin/bash
# Detener cualquier proceso que esté usando el puerto 3000
sudo fuser -k 5137/tcp || true
# Iniciar la aplicación
cd /home/ec2-user/dashboard
sudo bash -c "PORT=5137 npm run dev" &
# Esperar unos segundos para permitir que la aplicación se inicie
sleep 10
# Verificar si la aplicación se inició correctamente
if curl -s http://localhost:5137 > /dev/null; then
    echo "Se inició la aplicación en el puerto 5137"
    exit 0
else
    echo "Error: La aplicación falló en el puerto 5137"
    exit 1
fi