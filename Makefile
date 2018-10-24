BINARY_NAME = data-service.exe

build:
	go get -t -v
	go build -o $(BINARY_NAME) -v

run:
	go get -t -v
	go build -o $(BINARY_NAME) -v ./...
	./$(BINARY_NAME)

build-linux:
	go get -t -v
	GOOS=linux GOARCH=amd64 go build -o $(BINARY_NAME) -v