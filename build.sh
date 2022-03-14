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
