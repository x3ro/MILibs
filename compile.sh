#!/bin/bash
PKG_VER=0.23
GETTEXT_VER=0.17
GLIB_VER=2.15.4

export MACOSX_DEPLOYMENT_TARGET=10.4

CWD=`pwd`

tar -zxvf pkg-config-${PKG_VER}.tar.gz || exit 1
cd pkg-config-${PKG_VER}
/bin/bash ../configure_for_macfuse.sh || exit 1
make -j5 || exit 1
sudo make install || exit 1

cd $CWD
tar -zxvf gettext-${GETTEXT_VER}.tar.gz || exit 1
cd gettext-${GETTEXT_VER}
/bin/bash ../configure_for_macfuse.sh || exit 1
make -j5 || exit 1
sudo make install || exit 1

cd $CWD
tar -zxvf glib-${GLIB_VER}.tar.gz || exit 1
cd glib-${GLIB_VER}
/bin/bash ../configure_for_macfuse.sh || exit 1
make -j5 || exit 1
sudo make install || exit 1
