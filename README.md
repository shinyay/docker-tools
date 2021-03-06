#  CLI Tools in Container

Various utility CLI tools in a container package.

- [shinyay/tools](https://hub.docker.com/repository/docker/shinyay/tools)

## Description
- Dive
  - Analyze docker image layers
- Pack
  - cli for CloudNative Buildpacks
- EMC
  - Caliculate Java memmory

### Retrieve Binaries
#### Dive
```
$ curl -sSL "https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.tar.gz" | tar -xvz dive
```

#### Pack
```
$ curl -sSL "https://github.com/buildpacks/pack/releases/download/v0.13.1/pack-v0.13.1-linux.tgz" |tar -xvz
$ chmod +x pack
```

#### EMC
```
$ curl -L https://github.com/wreulicke/emc/releases/download/v0.0.3/emc_0.0.3_linux_amd64 -o emc
$ chmod +x emc
```

### Build Container image
```
$ docker build -t shinyay/tools .
```

## Demo

## Features

- dive
- pack
  - pack build --builder gcr.io/buildpacks/builder:v1 <SOURCE_CODE>
- emc

## Requirement

## Usage
```
$ docker run --rm -it \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v (pwd):/workdir \
        shinyay/tools <COMMAND>
```

## Installation
### GitHub Packages
```
$ cat ~/GH_TOKEN.txt | docker login docker.pkg.github.com -u shinyay --password-stdin
Login Succeeded
```
```
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
shinyay/tools       latest              38fbde47567b        3 days ago          99.2MB
```
```
$ docker tag 38fbde47567b docker.pkg.github.com/shinyay/docker-tools/tools:0.0.1
$ docker push docker.pkg.github.com/shinyay/docker-tools/tools:0.0.1
```

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/34c6fdd50d54aa8e23560c296424aeb61599aa71/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
