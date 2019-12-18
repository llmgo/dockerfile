# tomcat-8.5.37

### build image

```
$ docker build -t tomcat:8.5.37_v1 . 
```

### server.xml changes

```
        <Valve className="org.apache.catalina.valves.RemoteIpValve"
               remoteIpHeader="X-Forwarded-For"
               protocolHeader="X-Forwarded-Proto"
               protocolHeaderHttpsValue="https"/>
```

### catalina.sh changes 

```
#!/usr/bin/env bash
JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF8  -Duser.timezone=GMT+08"
```
