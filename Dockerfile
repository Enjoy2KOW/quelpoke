FROM golang:1.23-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o pokemon-finder main.go
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/pokemon-finder .
COPY index.tmpl.html .
EXPOSE 8080
CMD ["./pokemon-finder"]
