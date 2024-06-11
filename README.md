# Docker Evilginx3

Dockerization of Evilginx3. Currently using Evilginx version 3.3.

## Run locally

```bash
git clone https://github.com/nairpaa/docker-evilginx3.git
cd docker-evilginx3
docker build -t evilginx3 .
docker run --restart=always -it -d -p 443:443 -p 80:80 evilginx2
```