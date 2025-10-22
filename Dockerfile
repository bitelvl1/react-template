# Bazowy obraz Node 20 (pełny)
FROM node:20

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj tylko package.json i package-lock.json dla cache
COPY package*.json ./

# Zainstaluj zależności (powtarzalnie)
RUN npm ci

# Skopiuj resztę projektu
COPY . .

# Eksponuj port Vite dev server
EXPOSE 5173

# Polecenie startowe z hostem, aby Vite był dostępny z zewnątrz
CMD ["npm", "run", "dev", "--", "--host"]
