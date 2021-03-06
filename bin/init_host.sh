#! /bin/bash

if [ $# -ne 4 ]; then
    echo "error params."
    exit 1;
fi

#1. change hostname
cat > /etc/sysconfig/network <<EOF
HOSTNAME=host-$1-$2-$3-$4.local
NETWORKING=yes
EOF

cat > /etc/hostname <<EOF
host-$1-$2-$3-$4.local
EOF

hostname host-$1-$2-$3-$4.local

#2. install vim
yum install vim -y

#3. install cmake
yum install cmake -y

#4. install ntpdate
yum install ntpdate -y
ntpdate time.nist.gov

echo "success."

