docker build -t builder-nodejs:14.17.6 -f Dockerfile  .
docker tag builder-nodejs:14.17.6 tomsue123/builder-nodejs:14.17.6
docker push tomsue123/builder-nodejs:14.17.6
docker build -t builder-nodejs:14.17.6-podman -f podman/Dockerfile  ./podman/
docker tag builder-nodejs:14.17.6-podman tomsue123/builder-nodejs:14.17.6-podman
docker push tomsue123/builder-nodejs:14.17.6-podman

