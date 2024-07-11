init: docker-down-clear docker-pull docker-build docker-up
up:docker-up
down:docker-down
restart:down up
api-init: api-composer-install

docker-up:
	docker-compose up -d

docker-down-clear:
	docker-compose down -v --remove-orphans
docker-down:
	 docker-compose down --remove-orphans
docker-build:
	docker-compose build
docker-pull:
	docker-compose pull
api-composer-install:
	docker compose run --rm api-php-cli composer install
api-composer-update:
	docker compose run --rm api-php-cli composer update
api-dump-autoload:
	docker compose run --rm api-php-cli composer dump-autoload