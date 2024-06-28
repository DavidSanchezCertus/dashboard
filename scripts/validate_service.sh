#!/bin/bash

sleep 5
curl -f http://localhost:5173 || exit 1
echo "La aplicación esta corriendo correctamente"