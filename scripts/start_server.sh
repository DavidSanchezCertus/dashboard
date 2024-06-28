#!/bin/bash
# Detener cualquier proceso que esté usando el puerto 3000
sudo fuser -k 5173/tcp || true
# Iniciar la aplicación
cd /home/ec2-user/dashboard
sudo bash -c "npm run dev" &
# Esperar unos segundos para permitir que la aplicación se inicie
sleep 10
echo "Aplicacion iniciada"
exit 0