IMAGE=chrishirsch/fpm
CONTAINER=fpm

build:
	docker build --rm --tag "$(IMAGE)" .

clean:
	@docker rm -f $(CONTAINER) 2>/dev/null |:

shell: build
	docker run --rm --tty --interactive --entrypoint /bin/sh $(VOLUMES) "$(IMAGE)"

push: build tag
	docker push $(IMAGE)

tag:
	docker tag -f $(IMAGE) $(IMAGE)
