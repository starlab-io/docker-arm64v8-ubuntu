# docker-arm64v8-ubuntu
Arm64v8 Ubuntu based container used to run aarch64 binaries. 

```
# Run this container on an x86_64 system by doing:
$ sudo apt-get install qemu binfmt-support qemu-user-static
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
$ docker run --rm -t starlabio/docker-arm64v8-ubuntu  uname -m
aarch64
```

