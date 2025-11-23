#!/usr/bin/env bash
set -euo pipefail

echo "Installing pre-commit and detect-secrets (user install)..."
python3 -m pip install --user pre-commit detect-secrets pre-commit-hooks

echo "Installing git hooks via pre-commit..."
python3 -m pre_commit install || pre-commit install

echo "Generating detect-secrets baseline (review before committing)..."
detect-secrets scan --all-files > .secrets.baseline || detect-secrets scan > .secrets.baseline || true

echo "Done. Review .secrets.baseline and commit it if appropriate."
