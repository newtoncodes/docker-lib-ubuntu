# Ubuntu base image

This image is a clone of https://github.com/tianon/docker-brew-ubuntu-core.
Only the amd64 arch is used here.

The only addition to the Dockerfile is adding a variables script when the image starts.

```bash
#!/bin/bash

export CPU_COUNT=`grep processor /proc/cpuinfo | wc -l`;

tmp_=`basename "$(cat /proc/1/cpuset)"`
export CONTAINER_ID=${tmp_:0:12}

tmp_=$(date --rfc-3339=seconds);
tmp_=${tmp_:0:19};
export TIMESTAMP=$(echo $tmp_ | sed 's/[ \:\-]//g');
```

So you can use these variables inside the containers:

```bash
CPU_COUNT
CONTAINER_ID
TIMESTAMP
```
