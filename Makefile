PHARO = pharo
CACHE = cache

all: pharo

download-cache:
	@if test ! -d $(CACHE); then \
	mkdir $(CACHE); cd $(CACHE); curl get.pharo.org | bash; \
	else : ; fi

clean-pharo:
	@rm -rf $(PHARO)

pharo: download-cache clean-pharo
	@cp -R $(CACHE) $(PHARO);
	@cp scripts/startup.st $(PHARO)

clean-cache:
	@rm -rf $(CACHE)

save-startup:
	@cp pharo/startup.st scripts
