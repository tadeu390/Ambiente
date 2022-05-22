.PHONY: up

up-apache2-mysql:
	docker-compose -f docker-compose-apache2-mysql.yml up
up-node-mongo:
	docker-compose -f docker-compose-node-mongo.yml up -d
up-nginx-mysql:
	docker-compose -f docker-compose-nginx-mysql.yml up -d

.PHONY: down

down-apache2-mysql:
	docker-compose -f docker-compose-apache2-mysql.yml down
down-node-mongo:
	docker-compose -f docker-compose-node-mongo.yml down
down-nginx-mysql:
	docker-compose -f docker-compose-nginx-mysql.yml down

.PHONY: logs

logs:
	docker-compose logs -f
