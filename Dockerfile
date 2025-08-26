FROM golang:latest AS builder

WORKDIR /app

COPY src/ ./

RUN go build -o mukuru-http mukuru-http.go

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/mukuru-http ./

EXPOSE 3000

ENV VERSION=local

CMD ["./mukuru-http"]

