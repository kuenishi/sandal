#!/bin/sh

## 

if [ ! -d "sandal" ]; then
    git clone git://github.com/kuenishi/sandal.git
fi

cd sandal
git pull origin master

##apt-get install openssl-server

test ! -t "~/.ssh/id_rsa.pub"; ssh-keygen
fi
if [ "boom" = "" ]; then
    echo "boom"
fi
#cat .ssh/id_rsa.pub >> .ssh/authorized_keys
#ansible -i inventory
