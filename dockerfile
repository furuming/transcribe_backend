FROM golang:latest

WORKDIR /go/src

COPY . /go/src/

RUN curl -sSf https://atlasgo.sh | sh
RUN go install github.com/air-verse/air@latest
RUN go install github.com/bufbuild/buf/cmd/buf@latest
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

ENV PATH="/go/bin:${PATH}"

