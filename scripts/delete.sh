#!/usr/bin/env bash
set -euo pipefail

STACK_NAME="$1"

aws cloudformation delete-stack --stack-name "$STACK_NAME"

echo "Delete initiated: $STACK_NAME"
chmod +x scripts/delete.sh
