# Build stage
FROM golang:1.18.1 AS build-env
ENV GO111MODULE=on
ENV CGO_ENABLED=0
WORKDIR /app/proxy
COPY . .
RUN go build -o proxy
RUN chmod +x proxy

# Release stage
FROM alpine:latest AS release
WORKDIR /app/
COPY --from=build-env /app/proxy/proxy .
ENV WORKDIR "/app/"
ENV PATH "${WORKDIR}:${PATH}"
EXPOSE 8080

CMD ["proxy"]
