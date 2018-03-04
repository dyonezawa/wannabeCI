#!/bin/sh

# download wci
wget --no-check-certificate --content-disposition https://github.com/dyonezawa/wannabeCI/raw/master/bin/wci

# set wci to be runnable
chmod +x wci

# move it to /usr/bin/
sudo mv wci /usr/bin/wci