up:
	docker network create spark-net
	docker-compose up -d

down:
	docker-compose down
	docker network rm spark-net