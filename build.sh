#!/bin/bash
set -e

rm -fr *.deb
tar -zxf wheelhouse.tar.gz
cp requirements.txt wheelhouse/.
cp control pinormos-jupyterlab/jupyterlab-deb/DEBIAN/.
cp wheelhouse/* pinormos-jupyterlab/jupyterlab-deb/var/spool/syna/jupyterlab_wheels/.
pinormos-jupyterlab/gen-deb.sh
rm -fr wheelhouse
rm -fr pinormos-jupyterlab/jupyterlab-deb/var/spool/syna/jupyterlab_wheels/*
rm -fr jupyterlab_deb.tar.gz
tar -zcf jupyterlab_deb.tar.gz *
