#!/usr/bin/env bash
set -euo pipefail

STACK_NAME="$1"
TEMPLATE="$2"
PARAMS="$3"

aws cloudformation deploy \
  --stack-name "$STACK_NAME" \
  --template-file "$TEMPLATE" \
  --parameter-overrides file://"$PARAMS" \
  --capabilities CAPABILITY_NAMED_IAM

echo "Deployed stack: $STACK_NAME"
chmod +x scripts/deploy.sh
