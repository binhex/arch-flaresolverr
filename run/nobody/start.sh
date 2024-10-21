#!/usr/bin/dumb-init /bin/bash

# define path for install
install_path="/opt/flaresolverr"

# activate virtualenv
source "${install_path}/env/bin/activate"

# run flaresolverr
no_sandbox=true && python "${install_path}/src/flaresolverr.py"
