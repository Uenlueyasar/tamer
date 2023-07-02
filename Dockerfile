# Verwenden des offiziellen Node.js-Images als Basis
FROM node:latest

# Arbeitsverzeichnis im Container
WORKDIR /app

# Kopieren der package.json- und package-lock.json-Dateien in das Arbeitsverzeichnis
COPY package*.json ./

# Installation der Abhängigkeiten
RUN npm install

# Kopieren des Anwendungscodes in das Arbeitsverzeichnis
COPY . .

# Exponieren des Anwendungsportes
EXPOSE 3000

# Starten der Anwendung beim Start des Containers
CMD ["npm", "start"]
