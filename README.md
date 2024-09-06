
# Random Host

Create and assign a random hostname to a Linux system every time it boots up.


## Installation
```
curl -L https://raw.githubusercontent.com/mikki8/randomhost/master/install.sh | bash
```

### Optional

Before depending on the boot process, you can manually initiate the service to verify that it operates as intended.

1. Start the service by executing:
```bash
sudo systemctl start randomhost
```
2. Verify the hostname has been changed by running:
```bash
hostname
```
3. Examine the changes to the "/etc/hosts" file:
```bash
cat /etc/hosts
```

make template from vm
```
curl -L https://raw.githubusercontent.com/mikki8/randomhost/master/maketemplate.sh | bash
```
