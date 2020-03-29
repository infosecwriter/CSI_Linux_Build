#!/bin/sh

# Build a VM that supports nested virtualization (and thus virtualbox)  based on https://cloud.google.com/compute/docs/instances/enable-nested-virtualization-vm-instances

# WARNING: Not working right now...maybe test later

gcloud compute disks create nested-vm-disk --image-project debian-cloud --image-family debian-9 --zone us-central1-b

gcloud compute images create nested-vm \
  --source-disk nested-vm-disk --source-disk-zone us-central1-b \
  --licenses "https://compute.googleapis.com/compute/v1/projects/vm-options/global/licenses/enable-vmx"

gcloud compute disks delete nested-vm-disk --zone us-central1-b

gcloud compute instances create packer-agent --zone us-central1-b \
              --min-cpu-platform "Intel Haswell" \
              --boot-disk-size 20G \
              --machine-type g1-small \
              --image nested-vm
