## const
IMAGE_NAME=anodet
CONTAINER_NAME=anodet
build:
	docker build -t ${IMAGE_NAME} --force-rm=true --no-cache ./docker

run:
	docker run --rm --name ${CONTAINER_NAME} -p 8886:8888 -v ${PWD}/src:/workspace -w /workspace -it ${IMAGE_NAME} jupyter-lab --allow-root --ip=0.0.0.0 --port=8888 --no-browser --NotebookApp.token='' --notebook-dir=/workspace
