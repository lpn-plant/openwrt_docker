# Docker files

Docker files for building OpenWRT.

## OpenWRT building

Below command will automatically pull recent `lpnplant/openwrt-docker` image.

```
./docker/scripts/run_docker.sh openwrt
```

`openwrt` is directory containing OpenWRT source.

## Building image

```
docker build -t lpnplant/openwrt-docker ./docker
```

## Pulling images

Ready to use images are available on [LPN Plant Docker Hub](https://hub.docker.com/r/lpnplant/openwrt-docker/).
To get recent image use:

```
docker pull lpnplant/opwnwrt-docker
```


