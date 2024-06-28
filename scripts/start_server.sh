#!/bin/bash
# Detener cualquier proceso que esté usando el puerto 3000
sudo fuser -k 5137/tcp || true
# Iniciar la aplicación
cd /home/ec2-user/dashboard
# Obtener el PID del último comando en segundo plano
APP_PID=$!
TIMEOUT=60
RETRY_INTERVAL=5
elapsed=0
while [[ $elapsed -lt $TIMEOUT ]]; do
    if curl -s http://localhost:5137 > /dev/null; then
        echo "Se inició la aplicación en el puerto 5137"
        exit 0
    else
        echo "Esperando a que la aplicación se inicie..."
        sleep $RETRY_INTERVAL
        elapsed=$((elapsed + RETRY_INTERVAL))
    fi
done
echo "Error: La aplicación falló en el puerto 5137"
kill $APP_PID
exit 1


