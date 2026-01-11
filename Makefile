include .env
export 

start:
	docker run --rm -d -p 3000:$(PORT) --env-file ./.env -v logs:/app/data --name logsapp logsapp:test

stop:
	docker stop logsapp
