#!/bin/sh
pass="passyoulike@@"
give_root="true"
for user in `more users.txt`
do
if id "$user" &>/dev/null; then
  echo "$user found"
else
  echo "creating $user"
  mkdir /home/$user
  adduser --home /home/$user $user
  chown -R $user:$user /home/$user
  echo $pass | passwd --stdin "$user"
  chage -d 0 $user
  if [[ "${give_root}" == "true" ]]; then
    echo "give $user root access"
    gpasswd -a $user wheel
  else
    echo "not give $user root access"
  fi

fi
done
