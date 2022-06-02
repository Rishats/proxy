## Proxy - Simple HTTP proxy service.

### Description
This image runs proxy app based on Golang 1.18.1

Docker hub url:
- [skeletondocker/proxy](https://hub.docker.com/r/skeletondocker/certm/)

#### Docker
Make sure you edit your in docker-compose.yml
```yml
      URL: "http://example.com"
      PORT: "8080"
```

Docker compose Command
```bash
docker-compose up -d
```