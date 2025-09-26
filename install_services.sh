#!/bin/bash
set -euxo pipefail

ROOT=$(git rev-parse --show-toplevel )
# install frontend packages
cd "$ROOT"/frontend
sudo apt-get update -y
sudo apt-get install -y curl
sudo apt-get install -y nodejs
npm install react-router-dom
npm install
npm install -D tailwindcss postcss autoprefixer

# install backend packages
source ./backend/.venv/bin/activate
pip install -r ./backend/requirements.txt
