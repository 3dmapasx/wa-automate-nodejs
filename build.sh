#!/bin/bash

# Atualiza os pacotes base
apt update && apt install -y curl git bash

# Instala o NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Instala Node.js (versão 18 LTS)
nvm install 18
nvm use 18
nvm alias default 18

# Cria diretório do projeto
mkdir -p /app
cd /app

# (Opcional) Clonar repositório do seu scraper
# git clone https://github.com/seu-usuario/seu-repo.git .
# cd seu-repo

# Instala dependências do projeto
npm install --legacy-peer-deps
