# Menggunakan base image Go official dari Docker Hub
FROM golang:latest

# Set working directory di dalam container
WORKDIR /app

# Clone repositori Evilginx2
RUN git clone https://github.com/nairpaa/evilginx2.git
WORKDIR /app/evilginx2

# Build Evilginx2 dari source
RUN go build

# Port yang akan diexpose
EXPOSE 443 80

# Perintah untuk menjalankan Evilginx2
CMD ["./evilginx2"]

