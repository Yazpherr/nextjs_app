# 📦 1. Imagen base de Node.js + Debian (trae bash, apt, etc)
FROM node:20-bullseye

# 🏠 2. Definimos un directorio de trabajo limpio
WORKDIR /app

# ✅ 3. Instalamos bash explícitamente (opcional si quieres bash puro)
RUN apt-get update && apt-get install -y bash

# 🌎 4. Exponemos el puerto de Next.js
EXPOSE 3000

# 🚀 5. De momento no ejecutamos nada
CMD ["npm", "run", "dev"]

