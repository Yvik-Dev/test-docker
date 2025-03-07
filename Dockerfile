# 1. Utiliser une image Node.js officielle
FROM node:18

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers de l'application
COPY package*.json ./
RUN npm install

COPY . .

# 4. Exposer le port 3000
EXPOSE 3000

# 5. Commande pour démarrer l'application
CMD ["npm", "start"]
