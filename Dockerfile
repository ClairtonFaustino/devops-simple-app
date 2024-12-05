# Use uma imagem oficial do Node.js como base
FROM node:14

# Defina o diretório de trabalho
WORKDIR /app

# Copie o package.json e instale as dependências
COPY package.json /app
RUN npm install

# Copie o restante dos arquivos da aplicação
COPY . /app

# Exponha a porta que a aplicação irá usar
EXPOSE 3000

# Defina o comando para iniciar a aplicação
CMD ["npm", "start"]
