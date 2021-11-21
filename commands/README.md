# Useful commands


## rsync recursively (-a) with progress and designated port
rsync -a --exclude "logs/" -e 'ssh -p <port>' --progress <usr>@<ip>:<src> <tgt>

## add user with existing /home/user directory

```
adduser --home /home/xiaopeng xiaopeng
chown -R xiaopeng:xiaopeng /home/xiaopeng
passwd xiaopeng
# give root access: centos
gpasswd -a xiaopeng wheel

