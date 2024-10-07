#!/bin/bash

echo "Install jq"
apt-get update
apt-get install -y jq

echo "Download qapf"
asseturl=$(curl -H "Authorization: token ${MINAMI_GITHUB_TOKEN}" https://api.github.com/repos/moneyforward/cqoo-qapf/releases/latest | jq -r '.assets[] | select(.name=="qapf.zip") | .url')
curl -L -H "Authorization: token ${MINAMI_GITHUB_TOKEN}" -H "Accept:application/octet-stream" ${asseturl} >qapf.zip
unzip qapf.zip
chmod +x qapf
