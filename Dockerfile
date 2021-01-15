FROM golang

COPY . ./src/hellojenkins

RUN cd ./src/hellojenkins && go get -t ./...

RUN go build ./src/hellojenkins/main.go