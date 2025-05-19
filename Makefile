build:
	docker-compose build
run:
	rm -rf node_modules/.vite && docker-compose up --remove-orphans -d && npm run dev

down:
	docker-compose down

dbshow:
	php artisan db:show

seed:
	php artisan db:seed

migrate:
	docker exec geekmediaflex_laravel.test_1 bash -c "php artisan migrate:fresh --seed"

clear:
	php artisan optimize:clear

permissions:
	chmod 777 ~/Projects/GeekMediaFlex && sudo chown wislim:wislim ~/Projects/GeekMediaFlex
storagelink:
	docker exec geekmediaflex_laravel.test_1 bash -c "php artisan storage:link"
storagePermission:
	sudo chmod -R 777 storage
con:
	docker exec -ti geekmediaflex_laravel.test_1 bash
stan:
	./vendor/bin/phpstan analyse
