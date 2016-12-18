# Variables
current_dir=$(shell pwd)
docker_work_dir=/home/jovyan/work/

docker-build:
	docker build -t gancomic/jupyter-tensorflow -f ./docker/Dockerfile ./docker/

# Run various environments
docker-cpu: docker-build
	docker run -d -p 8888:8888 \
		-v $(current_dir)/data:$(docker_work_dir)/data \
		-v $(current_dir)/notebook:$(docker_work_dir)/notebook \
		-v $(current_dir)/models/:$(docker_work_dir)/models \
		gancomic/jupyter-tensorflow
