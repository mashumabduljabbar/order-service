# Menggunakan base image Node.js versi 18 dengan Alpine Linux
FROM node:18-alpine

# Menetapkan direktori kerja di dalam container
WORKDIR /src

# Menyalin semua file dari folder apps ke dalam direktori kerja
COPY . .

# Menjalankan perintah npm install untuk menginstal dependensi
RUN npm install --unsafe-perm

# Mengatur environment variable NODE_ENV menjadi "production"
ENV NODE_ENV=production

# Mendefinisikan bahwa aplikasi akan mendengarkan port 3000
EXPOSE 3000

# Menetapkan perintah default yang akan dijalankan ketika container dimulai
CMD ["npm", "start"]