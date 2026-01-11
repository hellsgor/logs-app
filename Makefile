include .env
export 

start:
	docker run --rm -d -p 3000:$(PORT) --env-file ./.env --name logsapp logsapp:test

stop:
	docker stop logsapp
