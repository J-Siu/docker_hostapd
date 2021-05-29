Docker - hostapd

### Build

```sh
git clone https://github.com/J-Siu/docker_hostapd.git
cd docker_hostapd
docker build -t jsiu/hostapd .
```

### Usage

#### Host Directories and Volume Mapping

Host|Inside Container|Mapping Required|Usage
---|---|---|---
${AP_CNF}||Yes|hostapd config file

#### Run

```docker
docker run \
-d \
-v ${AP_CNF}:/etc/hostapd.conf \
--network=host \
jsiu/hostapd
```

#### Compose

Get docker-compose template from image:

```docker
docker run --rm jsiu/hostapd cat /docker-compose.yml > docker-compose.yml
docker run --rm jsiu/hostapd cat /env > .env
```

Fill in `.env` according to your environment.

```sh
docker-compose up
```

### Repository

- [docker_hostapd](https://github.com/J-Siu/docker_hostapd)

### Contributors

- [John Sing Dao Siu](https://github.com/J-Siu)

### Change Log

- 2.9
  - hostapd version 2.9
- 2.9-r2
  - hostapd version 2.9-r2
- 2.9-r3
  - Auto update to 2.9-r3
<!--CHANGE-LOG-END-->

### License

The MIT License

Copyright (c) 2021

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
