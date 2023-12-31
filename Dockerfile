FROM golang:1.22

WORKDIR /usr/src/app

COPY . .

RUN go get -d -v ./...

RUN go build -o go-postgres . 

EXPOSE 8080

CMD ["./go-postgres"]