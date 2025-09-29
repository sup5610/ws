#!/bin/bash
set -euo pipefail

ROOT=$(git rev-parse --show-toplevel )

# install frontend packages
echo "Installing nvm"
if ! command -v nvm >/dev/null 2>&1; then
  curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi
source "$HOME/.nvm/nvm.sh"

echo "Installing next.js"
if [[ -f "$ROOT/frontend/.nvmrc" ]]; then
  (cd "$ROOT/frontend" && nvm install)
else
  nvm install 22
fi
nvm use 22

echo "Installing react-router-dom"
npm install react-router-dom

echo "Installing tailwind"
npm install -D tailwindcss postcss autoprefixer


# install backend packages
echo "Checking for Python venv"
if [[ ! -d "./backend/.venv" ]]; then
    echo "Creating Python venv"
    python3 -m venv "./backend/.venv"
else
    echo "Python venv already exists"
fi
echo "Sourcing venv"
source ./backend/.venv/bin/activate
echo "Installing required Python packages"
pip install -r ./backend/requirements.txt


echo "Installs completed"