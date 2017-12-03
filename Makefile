IMAGE=poum/doxygen
VERSION=1.8.13

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) --version

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):1.8
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):1

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest
	docker push $(IMAGE):1.8
	docker push $(IMAGE):1
