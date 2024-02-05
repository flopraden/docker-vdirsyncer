all: build
build:
	docker build -t vdirsyncer:local .
.PHONY: build clean mrproper test

clean:
mrproper:

test:
	docker run -it --rm --network="host" --user=1000 -v/tmp/vdirsyncer/config:/config -v/tmp/vdirsyncer/data:/data vdirsyncer:local
