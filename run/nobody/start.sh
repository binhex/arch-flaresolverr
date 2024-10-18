#!/usr/bin/dumb-init /bin/bash

# set env vars
export LOG_LEVEL="info"
export CAPTCHA_SOLVER="none"

# define path for install
install_path="/opt/flaresolverr"

# activate virtualenv
source "${install_path}/env/bin/activate"

# run flaresolverr
python "${install_path}/src/flaresolverr.py"
