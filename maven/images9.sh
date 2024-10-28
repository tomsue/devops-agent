#podman build -t builder-maven:v3.2.0 -f Dockerfile  .
#podman tag builder-maven:v3.2.0 tomsue123/builder-maven:v3.2.0
cd podman
podman build -t docker.io/tomsue123/builder-maven:v3.2.0-centos9-podman -f Dockerfile9  ./
podman push tomsue123/builder-maven:v3.2.0-centos9-podman

#sudo rm -rf /run/containers/storage /run/libpod
