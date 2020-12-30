#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset


echo "Setting up the environment..."

echo "Setting up vim..."

cp -a vim/. ~/

echo "Done!"
