docker build -t builder-nodejs:latest -f Dockerfile  .
docker tag builder-nodejs:latest registry.cn-beijing.aliyuncs.com/kubesphereio/builder-nodejs:v3.2.0
docker build -t builder-nodejs:latest-podman -f podman/Dockerfile  ./podman/
docker tag builder-nodejs:latest-podman registry.cn-beijing.aliyuncs.com/kubesphereio/builder-nodejs:v3.2.0-podman
