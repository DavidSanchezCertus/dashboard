#!/bin/bash

sleep 5
curl -f http://localhost:5137 || exit 1
echo "La aplicación esta corriendo correctamente"