.PHONY: up

up-node-mongo:
	docker-compose -f docker-compose-node-mongo.yml up -d
up-nginx-mysql:
	docker-compose -f docker-compose-nginx-mysql.yml up -d

.PHONY: down

down-node-mongo:
	docker-compose -f docker-compose-node-mongo.yml down
down-nginx-mysql:
	docker-compose -f docker-compose-nginx-mysql.yml down

.PHONY: logs

logs:
	docker-compose logs -f
