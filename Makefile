# Production
build:
	docker compose -f ./docsify/docker-compose.yml build

start:
	docker compose -f ./docsify/docker-compose.yml up

stop:
	docker compose -f ./docsify/docker-compose.yml down


# Development
build-dev:
	docker compose -f ./docsify/docker-compose.dev.yml build

start-dev:
	docker compose -f ./docsify/docker-compose.dev.yml up

stop-dev:
	docker compose -f ./docsify/docker-compose.dev.yml down
