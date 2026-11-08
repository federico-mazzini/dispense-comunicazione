#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
mkdir -p dist
# Rimuove solo gli output di questa build: un errore non lascia un vecchio PDF pubblicabile.
rm -f dist/dispense-comunicazione.pdf
typst compile --root . src/main.typ dist/dispense-comunicazione.pdf
test -s dist/dispense-comunicazione.pdf
