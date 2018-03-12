# docker-vdirsyncer 

A docker for [vdirsyncer](https://github.com/pimutils/vdirsyncer)

![Docker Build Status](https://img.shields.io/docker/build/jbruggem/vdirsyncer.svg)


# Usage

## use an existing build

```
docker run --rm -i --user=$UID -v$PWD/config:/config -v$PWD/data:/data  jbruggem/vdirsyncer:1.0_vdirsync_0.16.3
```

## or build it yourself

```
docker build -t jbruggem/vdirsyncer:local .
docker run --rm -i --user=$UID -v$PWD/config:/config -v$PWD/data:/data jbruggem/vdirsyncer:local
```
