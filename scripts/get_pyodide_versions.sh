#!/bin/bash
set -e

PACKAGE_JSON_URL="https://pypi.org/pypi/pyodide-build/json"

wget --no-check-certificate "$PACKAGE_JSON_URL" -O-    | jq  -r '.releases   | keys | .[]' |sort -V
