FROM golang

COPY ./main.go ./src/main.go

RUN go build ./src/main.go