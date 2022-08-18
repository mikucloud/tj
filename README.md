```
curl -fsSL https://github.com/mikucloud/tj/raw/master/sign.sh | bash -s domain.com
```

```
curl -fsSL https://github.com/mikucloud/tj/raw/master/install.sh | bash -s API TOKEN NODEID LICENSE 60
```

```
docker run -d --name=trojan \
-v /root/.cert:/root/.cert \
-e API=API \
-e TOKEN=TOKEN \
-e NODE=NODEID \
-e LICENSE=NULL \
-e SYNCINTERVAL=60 \
--restart=always \
--network=host \
mikucloud/tidalab
```
