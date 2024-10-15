# Gunakan image Node.js sebagai base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Salin package.json dan install dependencies
COPY package*.json ./
RUN npm install

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Ekspos port yang digunakan aplikasi
EXPOSE 3000

# Jalankan aplikasi Node.js
CMD ["npm", "start"]