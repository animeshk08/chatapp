.PHONY: install
install: protos/chat.pb.go
	go install .
	which chatroom

protos/chat.pb.go:
	protoc --go_out="plugins=grpc:." protos/chat.proto

.PHONY: docker
docker:
	docker build --rm -t animeshk08/chatroom .
