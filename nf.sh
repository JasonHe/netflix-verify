#!/bin/bash
apt install curl -y
uname -m | grep -qi aarch64 && oarch=linux_arm64 || oarch=linux_amd64;
wget -O nf "$(curl -s https://api.github.com/repos/sjlleo/netflix-verify/releases/latest|grep -i "browser_download_url.*${oarch}"|awk -F '"' '{print $(NF-1)}')";
chmod +x ./nf
./nf
