#!/bin/bash

echo "Intall GH CLI"
pip3 install yq
curl -sSL https://github.com/cli/cli/releases/download/v2.6.0/gh_2.6.0_linux_amd64.tar.gz -o gh_2.6.0_linux_amd64.tar.gz
tar xvf gh_2.6.0_linux_amd64.tar.gz
sudo cp gh_2.6.0_linux_amd64/bin/gh /usr/local/bin/
