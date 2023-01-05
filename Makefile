docker-build: 
	docker build -t go_server:latest .

run: stop
	docker run -d -p 8888:8888 --rm -v `pwd`:/app --name go_server_latest go_server:latest

stop: 
	docker container rm go_server_latest --force

