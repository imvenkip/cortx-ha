#!/bin/bash

set -x

BASE_DIR=$(realpath "$(dirname $0)/../../")

req_file=${BASE_DIR}/jenkins/pyinstaller/requirements.txt
python3 -m pip install -r $req_file > /dev/null || {
    echo "Unable to install package from $req_file"; exit 1;
};