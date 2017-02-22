#!/bin/bash

CURR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$(dirname "$CURR")"

virtualenv -p ${DIR}/.localpython/bin/python  $DIR/venv


source $DIR/venv/bin/activate

python --version

pip install -r $DIR/requirements.txt

