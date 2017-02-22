#!/bin/bash
CURR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$(dirname "$CURR")"

mkdir $DIR/src
mkdir $DIR/.localpython

cd $DIR/src

# Get/Unpack python
wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar xfz Python-2.7.9.tgz

# Configure/install python
cd Python-2.7.9/
./configure --prefix=${DIR}/.localpython  --enable-ipv6
make
make install

echo "Install venv"
cd $DIR/src
wget http://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.5.2.tar.gz#md5=fbcefbd8520bb64bc24a560c6019a73c
tar -zxvf virtualenv-1.5.2.tar.gz

cd virtualenv-1.5.2/
$DIR/.localpython/bin/python setup.py install

echo "Make venv"
virtualenv -p ${DIR}/.localpython/bin/python  $DIR/venv

source $DIR/venv/bin/activate

python --version

pip install -r $DIR/requirements.txt

