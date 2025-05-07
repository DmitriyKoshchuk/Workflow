FROM golang:1.24.2

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build -o /app/main .

CMD ["/app/main"]