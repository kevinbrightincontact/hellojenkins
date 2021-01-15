FROM golang

COPY . ./src/hellojenkins

RUN cd ./src/hellojenkins && go get ./...

RUN go build ./src/hellojenkins/main.go

RUN printf \\nXDG_CACHE_HOME=/tmp/.cache >> ~/.bashrc