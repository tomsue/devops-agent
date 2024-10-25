#centos9
cd podman
podman build -t builder-base:v3.3.1-centos9-podman -f Dockerfile9  ./
podman tag builder-base:v3.3.1-centos9-podman tomsue123/builder-base:v3.3.1-centos9-podman
podman push tomsue123/builder-base:v3.3.1-centos9-podman

#docker build -t builder-base:v3.3.1 -f Dockerfile  .

#docker tag builder-base:v3.3.1 tomsue123/builder-base:v3.3.1
#docker push tomsue123/builder-base:v3.3.1


podman build -t builder-base:v3.3.1-centos9-podman -f Dockerfile  ./
