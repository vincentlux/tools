# Useful commands


## rsync recursively (-a) with progress and designated port
rsync -a --exclude "logs/" -e 'ssh -p <port>' --progress <usr>@<ip>:<src> <tgt>
