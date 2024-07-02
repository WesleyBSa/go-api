FROM golang:1.22.4

WORKDIR /go/src/app

COPY . .

EXPOSE 8003

RUN go build -o main cmd/main.go

CMD ["./main"]