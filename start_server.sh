#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)

# frontend
npx tailwindcss init -p


# backend
source "$REPO_ROOT/backend/.venv/bin/activate"

python3 "$REPO_ROOT"/backend/manage.py runserver 7000