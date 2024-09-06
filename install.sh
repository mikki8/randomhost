#!/bin/bash

sudo -v

TMP_DIR=$(mktemp -d)

cd "$TMP_DIR" || exit

#https://stackoverflow.com/a/20437297
command -v git >/dev/null 2>&1 ||
{ echo >&2 "Git is not installed. Installing..";
  sudo apt install git -y
}


git clone https://github.com/mikki8/randomhost.git .
sudo cp -rf randomhost /usr/bin
sudo chmod +x /usr/bin/randomhost
sudo cp -rf randomhost.service /etc/systemd/system
sudo chmod 644 /etc/systemd/system/randomhost.service
sudo systemctl daemon-reload 
sudo systemctl enable randomhost
cd
rm -rf "$TMP_DIR"
