run:
	pdm run uvicorn app.main:app	

docker-build:
	docker build -t terraform-fastapi-ec2:0.0.1 .

docker-run:
	docker run --rm -it -p 8000:8000 terraform-fastapi-ec2:0.0.1