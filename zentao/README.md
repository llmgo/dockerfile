# zentao

1. build image

```
$ cd zentao
$ docker build -t zbox .
```

2. make docker-compose

```
$ cat <<EOF>> docker-compose.yml
version: '3.7'
services:
  zentao:
    image: zbox:latest
    container_name: zbox
    hostname: zbox
    ports:
      - "81:80"
      - "3307:3306"
    environment:
      USER: root
      PASSWD: "123456"
    volumes:
    - /opt/zbox/:/opt/zbox/
EOF
```

3. start

```
$ docker-compose up -d 
```
