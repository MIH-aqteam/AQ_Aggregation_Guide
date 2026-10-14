#!/bin/bash
set -Eeuo pipefail
cd "$(dirname "$0")"
echo "Building AURA Data Aggregation Guide..."
/usr/bin/python3 -m sphinx -W --keep-going -E -a -b html source build/html
open build/html/index.html
echo "Local build complete."
