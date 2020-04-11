.PHONY: build
build:
	packer build -only=virtualbox-iso -var-file=xubuntu1804.json ubuntu.json

# build while displaying GUI - only for local builds
.PHONY: build-gui
build-gui:
	packer build -only=virtualbox-iso -var-file=xubuntu1804.json -var 'headless=false' ubuntu.json
	
.PHONY: clean
clean:
	vboxmanage controlvm xubuntu1804 poweroff || true
	vboxmanage unregistervm xubuntu1804 --delete || true
