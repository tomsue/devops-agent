docker build -t builder-base:v3.3.1 -f Dockerfile  .
docker tag builder-base:v3.3.1 tomsue123/builder-base:v3.3.1
docker push tomsue123/builder-base:v3.3.1
docker build -t builder-base:v3.3.1-podman -f podman/Dockerfile  ./podman/
docker tag builder-base:v3.3.1-podman tomsue123/builder-base:v3.3.1-podman
docker push tomsue123/builder-base:v3.3.1-podman

