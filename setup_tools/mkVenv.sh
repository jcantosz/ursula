#!/bin/bash

CURR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$(dirname "$CURR")"

virtualenv -p ${DIR}/.localpython/bin/python  /home/${USER}/venv

cd $DIR/venv/bin
source ./activate

python --version

pip install -r $DIR/../requirements.txt

