# expo-docker

Dockerfile for Expo.

## Build

```
$ docker build -t expo ./ --build-arg uid=$(id -u)
```

## Run

```
$ docker run -it --rm -p 19000:19000 -p 19001:19001 \
  -v "$PWD:/code" --user expo-user \
  expo:latest bash
```

## Use

In container.

```
$ expo init sample
$ cd sample
$ expo init
```
