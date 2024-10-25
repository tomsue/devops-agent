#centos7
cd podman
podman build -t builder-base:v3.3.1-podman -f podman/Dockerfile  ./
podman tag builder-base:v3.3.1-podman tomsue123/builder-base:v3.3.1-podman
podman push tomsue123/builder-base:v3.3.1-podman

