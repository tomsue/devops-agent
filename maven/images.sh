#podman build -t builder-maven:v3.2.0 -f Dockerfile  .
#podman tag builder-maven:v3.2.0 tomsue123/builder-maven:v3.2.0
cd podman
podman build -t docker.io/tomsue123/builder-maven:v3.2.0-podman -f Dockerfile  ./
podman push tomsue123/builder-maven:v3.2.0-podman


podman push tomsue123/builder-maven:v3.2.0


