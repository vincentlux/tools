#!/bin/sh
for user in `more users.txt`
do
echo "$user"
useradd $user
echo "password-you-like-$user" | passwd --stdin "$user"
chage -d 0 $user
gpasswd -a $user wheel
done
