#!/bin/sh


# download wci
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     wget --no-check-certificate --content-disposition https://github.com/dzway/wannabeCI/raw/master/bin/linux_amd64/wci;;
    Darwin*)    wget --no-check-certificate --content-disposition https://github.com/dzway/wannabeCI/raw/master/bin/darwin/wci;;
    *)          echo "Sorry, there's no available package for your OS, contact github.com/dzway/wannabeCI."
esac

# set wci to be runnable
chmod +x wci

# move it to /usr/bin/
sudo mv wci /usr/local/bin/wci
rm -rf get-wci.sh
