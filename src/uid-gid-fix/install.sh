#!/bin/sh
set -e

echo "Activating feature 'uid-gid-fixer'"

sed -e 's/users:x:100:/users:x:101:/' -i /etc/group
echo 'SYS_GID_MIN              101' >> /etc/login.defs
sed -e 's/FIRST_SYSTEM_GID=100/FIRST_SYSTEM_GID=101/' -i /etc/adduser.conf