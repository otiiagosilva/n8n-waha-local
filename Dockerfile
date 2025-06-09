FROM node:18

# Instala dependências
WORKDIR /app
COPY . .

RUN npm install -g pm2
RUN npm install

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.js"]
