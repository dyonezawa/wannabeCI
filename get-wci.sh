#!/bin/sh

# download wci
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     wget --no-check-certificate --content-disposition https://bintray.com/dzway/wannabeci/download_file?file_path=linux_amd64%2Fwci%2Fwci;;
    Darwin*)    wget --no-check-certificate --content-disposition https://bintray.com/dzway/wannabeci/download_file?file_path=darwin%2Fwci%2Fwci;;
    *)          echo "Sorry, there's no available package for your OS, contact github.com/dzway/wannabeCI."
esac

# set wci to be runnable
chmod +x wci

# move it to /usr/bin/
sudo mv wci /usr/local/bin/wci
rm -rf get-wci.sh
