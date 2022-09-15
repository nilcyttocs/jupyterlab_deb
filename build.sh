#!/bin/bash
set -e

rm -fr *.deb
mkdir wheelhouse
tar -zxf wheelhouse01.tar.gz -C wheelhouse
tar -zxf wheelhouse02.tar.gz -C wheelhouse
cp requirements.txt wheelhouse/.
cp control pinormos-jupyterlab/jupyterlab-deb/DEBIAN/.
cp wheelhouse/* pinormos-jupyterlab/jupyterlab-deb/var/spool/syna/jupyterlab_wheels/.
pinormos-jupyterlab/gen-deb.sh
rm -fr wheelhouse
rm -fr pinormos-jupyterlab/jupyterlab-deb/DEBIAN/control
rm -fr pinormos-jupyterlab/jupyterlab-deb/var/spool/syna/jupyterlab_wheels/*
