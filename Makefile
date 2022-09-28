all : 
	cd src && docker compose up --build
down:
	docker compose down
clean:
	docker system prune -all