.PHONY: build
build:
	packer build -only=virtualbox-iso -var-file=csi-linux-analyst.json ubuntu-base.json

.PHONY: build-proxy
build-proxy:
	packer build -only=virtualbox-iso -var-file=csi-linux-analyst-proxy.json ubuntu-base.json

# build while displaying GUI - only for local builds
.PHONY: build-gui
build-gui:
	packer build -only=virtualbox-iso -var-file=csi-linux-analyst.json -var headless=false ubuntu-base.json

# build while displaying GUI - only for local builds - with proxy
build-gui-proxy:
	# For some reason cannot pass `-var preseed` and have this work.  
	# May debug later
	packer build -only=virtualbox-iso -var-file=csi-linux-analyst-proxy.json -var headless=false ubuntu-base.json
	
.PHONY: clean
clean:
	vboxmanage controlvm csi-linux-analyst poweroff || true
	vboxmanage unregistervm csi-linux-analyst --delete || true
	rm -rf output-csi-linux-analyst*/ || true
