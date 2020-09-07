# Name

Overview

## Description
### Retrieve Dive Binary
```
$ curl -sSL "https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.tar.gz" | tar -xvz dive
```

### Retrieve Pack Binary
```
$ curl -sSL "https://github.com/buildpacks/pack/releases/download/v0.13.1/pack-v0.13.1-linux.tgz" |tar -xvz
$ chmod +x pack
```

### Retrieve EMC Binary
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

- feature:1
- feature:2

## Requirement

## Usage
```
$ docker run --rm -it \
        -v /var/run/docker.sock:/var/run/docker.sock \
        shinyay/tools
```

## Installation

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/34c6fdd50d54aa8e23560c296424aeb61599aa71/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
