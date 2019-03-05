# Canoed Docker image
Canoed is a backend for the Canoe RaiBlocks wallet. It uses a rai_node
and creates a middle layer for mediating RPC calls, holding external
state, forwarding blocks over MQTT and various other things Canoe
needs to be done on the server. It uses a runing rai_node, Redis,
PostgreSQL and VerneMQ.

## Nodejs
Canoed was first written in Nim, a modern high performance language
that produces small and fast binaries by compiling via C. I love Nim,
but we switched to Nodejs because there is no properly working MQTT
library in Nim. The code style is fairly plain vanilla.

## Docker

This is an automated Docker build based on `node:current-stretch`.

## Running Canoed
It's the standard:

```
docker run -ti --rm azazel/canoed:latest --help
```

See source code to find the default `canoed.conf` JSON configuration.
