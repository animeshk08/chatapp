# Chatroom 
A simple chat server/client implemented with [gRPC](https://grpc.io) in Go. 

## Installation

Installation requires the Go toolchain, the [`protoc` compiler](https://github.com/google/protobuf) and the [`protoc-gen-go` plugin](https://github.com/golang/protobuf).

## Usage

```bash
$ ./chatroom --help
Usage of ./chatroom:
  -h string
      the chat server's host (default "0.0.0.0:6262")
  -n string
      the username for the client
  -p string
      the chat server's password
  -s run as the server
  -v enable debug logging
```

### Server

```bash
./chatroom -s -p "secret-password"
```

### Client

```bash
./chatroom -h "chat.example.com:6262" -p "secret-password" -n "Animesh Kumar"
```

## Docker

A Dockerfile is included with this project.

### Run as Server

```bash
docker run --rm \
  -p 6262:6262 \
  animeshk08/chatroom \
  -s -p "super-secret"
```

### Run as Client

```bash
docker run --rm -i \
  animeshk08/chatroom \
  -h "chat.example.com" \
  -p "super-secret" \
  -n "Animesh"
```

### Build from Scratch

```bash
make docker
```