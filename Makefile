all: build-new-image

clean:
	@rm -rf image

download-base-image:
	@mkdir image; cd image; curl get.pharo.org/alpha | bash
	@cp scripts/startup.st image

build-new-image: clean download-base-image

save-startup:
	@cp image/startup.st scripts
