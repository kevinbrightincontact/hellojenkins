FROM golang

COPY . ./src/hellojenkins

RUN cd ./src/hellojenkins && go mod download

RUN go build ./src/hellojenkins/main.go