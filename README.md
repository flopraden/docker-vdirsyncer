# docker-vvdirsyncer

A docker for [vdirsyncer](https://github.com/pimutils/vdirsyncer)

# Usage

```
docker build -t jbruggem/vdirsyncer:latest .
docker run --rm -i --user=$UID -v$PWD/config:/config -v$PWD/data:/data  jbruggem/vdirsyncer
```