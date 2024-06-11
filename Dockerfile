# Using the official Go base image from Docker Hub
FROM golang:latest

# Set working directory in the container
WORKDIR /app

# Clone Evilginx2 repository
RUN git clone https://github.com/nairpaa/evilginx2.git
WORKDIR /app/evilginx2

# Build Evilginx2 form source
RUN go build

# Install jq and vim
RUN apt-get update && apt-get install -y jq vim

# Port to be exposed
EXPOSE 443 80

# Rim Evilginx2
CMD ["./evilginx2"]

