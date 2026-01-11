include .env
export 

prod:
	docker run --rm -d -p 3000:$(PORT) --env-file ./.env -v logs:/app/data --name logsapp logsapp:test
	
dev:
	docker run --rm -d -p 3000:$(PORT) --env-file ./.env -v logs:/app/data -v /node_modules -v $(CURDIR):/app --name logsapp logsapp:test npm start

stop:
	docker stop logsapp
