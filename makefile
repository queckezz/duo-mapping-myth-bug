
build-myth:
	@rm -rf components/duo.json
	@duo \
		--use duo-myth \
		--output build \
		lib/index.css

build:
	@rm -rf components/duo.json
	@duo \
		--output build \
		lib/index.css


.PHONY: build