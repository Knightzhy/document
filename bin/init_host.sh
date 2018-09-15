#! /bin/bash

if [ $# -ne 4 ]; then
    exit 1;
fi

cat > /etc/sysconfig/network <<EOF
HOSTNAME=host-$1-$2-$3-$4.local
NETWORKING=yes
EOF

cat > /etc/hostname <<EOF
host-$1-$2-$3-$4.local
EOF

hostname host-$1-$2-$3-$4.local

