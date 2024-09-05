sudo -v
git clone https://github.com/ryanmroth/randomhost.git
sudo cp randomhost/randomhost /usr/bin
sudo chmod +x /usr/bin/randomhost
sudo cp randomhost/randomhost.service /etc/systemd/system
sudo chmod 644 /etc/systemd/system/randomhost.service
sudo systemctl daemon-reload 
sudo systemctl enable randomhost
