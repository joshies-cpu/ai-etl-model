#!/bin/bash
# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Run uvicorn using the venv's executable
PROJECT_ROOT="$SCRIPT_DIR/.."
cd "$PROJECT_ROOT"
"$PROJECT_ROOT/venv/bin/uvicorn" app.main:app --reload --host 127.0.0.1 --port 8000
