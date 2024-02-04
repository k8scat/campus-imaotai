.PHONY: build-web-image
build-web-image:
	docker build -t imaotai-web:latest -f web.Dockerfile .
