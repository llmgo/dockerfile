# dubbo-admin-2.6.0


1. Edit config 

```bash
$ vim dubbo.properties
dubbo.registry.address=zookeeper://zk1.yoho8.com:2181
dubbo.admin.root.password=root
dubbo.admin.guest.password=guest
```

2. Build docker image

```bash
$ docker build -t dubbo-admin .
```

3. Start 

```bash
$ docker run -d -p 8080:8080 --name dubbo-admin dubbo-admin
```
