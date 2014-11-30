
build-bug:
	@rm -rf components/duo.json
	@duo \
		--use duo-myth \
		--output build \
		lib/index.css \
		lib/index.js

build:
	@rm -rf components/duo.json
	@duo \
		--output build \
		lib/index.css \
		lib/index.js


.PHONY: build