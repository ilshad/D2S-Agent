IMAGE = image
CACHE = cache

all: image

clean-cache:
	@rm -rf $(CACHE)

download-cache:
	@if test ! -d $(CACHE); then \
	mkdir $(CACHE); cd $(CACHE); curl get.pharo.org/alpha | bash; \
	else : ; fi

clean-image:
	@rm -rf $(IMAGE)

image: download-cache clean-image
	@cp -R $(CACHE) $(IMAGE);
	@cp scripts/startup.st $(IMAGE)

save-startup:
	@cp image/startup.st scripts
