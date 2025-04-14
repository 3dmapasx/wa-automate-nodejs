#!/bin/bash

# Cria a pasta da aplicação
mkdir -p /app
cd /app

# Clona novamente o código dentro da pasta certa
git clone https://github.com/3dmapasx/wa-automate-nodejs.git .

# Instala as dependências do Node.js
npm install --legacy-peer-deps
