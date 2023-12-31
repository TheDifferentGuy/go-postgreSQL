FROM golang:latest

WORKDIR /usr/src/app

RUN go install github.com/cosmtrek/air@latest


COPY . .

RUN go mod tidy

# RUN go get -d -v ./...

# RUN go build -o go-postgres . 

# EXPOSE 8080

# CMD ["./go-postgres"]