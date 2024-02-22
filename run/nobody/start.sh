#!/usr/bin/dumb-init /bin/bash

# set env vars
export LOG_LEVEL="info"
export CAPTCHA_SOLVER="none"

# run flaresolverr
cd /opt/flaresolverr && /opt/flaresolverr/flaresolverr
