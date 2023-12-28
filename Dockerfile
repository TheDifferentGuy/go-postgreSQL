FROM golang:1.21-alpine3.19

WORKDIR /app

COPY . .

RUN go get -d -v ./...

RUN go build -o go-postgres . 

EXPOSE 8080

CMD ["./go-postgres"]