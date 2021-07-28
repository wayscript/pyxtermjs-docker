DOCKER_SCAN_SUGGEST=false
export DOCKER_SCAN_SUGGEST

build-and-run:
	docker-compose up --build --remove-orphans pyxtermjs-docker
