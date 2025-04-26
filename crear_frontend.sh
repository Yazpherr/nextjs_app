#!/bin/bash

# Script maestro para crear el frontend dentro del contenedor automáticamente

# Variables
SERVICE_NAME=nextjs-app

# Verificamos si ya existe la carpeta frontend
if [ -d "frontend" ]; then
  echo "✅ El proyecto frontend ya existe, no es necesario crearlo."
else
  echo "⚡ Entrando al contenedor $SERVICE_NAME y creando frontend..."

  # Usamos docker-compose run para lanzar el contenedor y crear el proyecto
  docker-compose run --rm $SERVICE_NAME npx create-next-app@latest frontend

  echo "✅ Proyecto frontend creado exitosamente dentro de /frontend."
fi

