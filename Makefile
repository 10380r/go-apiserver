swagger-validate:
	swagger validate swagger.yml
swagger-generate:
	swagger generate server -f swagger.yml
go-run:
	go run cmd/hello-server/main.go --port=8000
