#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
./runner *.txtar
