compile-protoc1:
	protoc api/v1/*.proto --go_out=. --proto_path=.
test:
	go test --race ./...
run:
	go run *.go 
compile-protoc:
	protoc api/v1/*.proto \
                    --go_out=. \
                    --go-grpc_out=. \
                    --go_opt=paths=source_relative \
                    --go-grpc_opt=paths=source_relative \
                    --proto_path=.