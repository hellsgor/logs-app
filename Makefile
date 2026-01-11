include .env
export 

prod:
	docker run --rm -d -p 3000:$(PORT) --env-file ./.env -v logs:/app/data --name logsapp logsapp:latest
	
dev:
	docker run --rm -d -p 3000:$(PORT) --env-file ./.env -v logs:/app/data -v /app/node_modules -v $(CURDIR):/app --name logsapp logsapp:latest npm start

stop:
	docker stop logsapp
