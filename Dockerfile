FROM golang

COPY . ./src/hellojenkins

RUN cd ./src/hellojenkins && go get ./...

RUN go build ./src/hellojenkins/main.go