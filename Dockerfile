# Utiliza uma imagem leve do Node.js
FROM node:22-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de configuração de dependências
COPY package*.json ./

# Instala as dependências dentro do contêiner
RUN npm install

# Copia o restante do código
COPY . .

# Expõe a porta padrão que o Astro utiliza internamente
EXPOSE 4321
