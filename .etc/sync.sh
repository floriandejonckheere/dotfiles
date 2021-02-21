#!/usr/bin/env bash
#
# sync.sh - Sync system configuration to dotfiles repository
#

REPO="$HOME/.etc/"

FILES=$(find "${REPO}" -type f -not -path "${REPO}sync.sh")

for FILE in ${FILES[@]}; do
	SYSTEM=${FILE/$REPO/\/etc\/}

	cp -v "${SYSTEM}" "${FILE}"
done
