.PHONY: carton-install test

all: carton-install

carton-install:
	carton install --deployment

test:
	carton exec -- prove -Ilib -r t
