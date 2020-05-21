swagger-validate:
	swagger validate swagger.yml
swagger-generate:
	swagger generate server -f swagger.yml
local-runapp:
	go run cmd/hello-server/main.go --port=8000
docker-runapp:
	docker-compose build && \
	docker-compose up -d && \
	docker-compose exec app go run cmd/hello-server/main.go --port=8000
