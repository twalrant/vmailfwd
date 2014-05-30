#!/bin/bash
#
INSTALL_DIR=/usr/local
mkdir -p $INSTALL_DIR/bin || exit;
cp addvmail $INSTALL_DIR/bin || exit;
chmod +x $INSTALL_DIR/bin/addvmail || exit;
ln -s addvmail $INSTALL_DIR/bin/delvmail || exit;
cp -i vmailfwd.conf /etc/default/vmailfwd || exit;
