#!/bin/sh
for user in `more users.txt`
do
if id "$user" &>/dev/null; then
  echo "$user found"
else
  echo "creating $user"
  mkdir /home/$user
  adduser --home /home/$user $user
  chown -R $user:$user /home/$user
  echo "passyoulike@@" | passwd --stdin "$user"
  chage -d 0 $user
  echo "give $user root access"
  gpasswd -a $user wheel
fi
done
