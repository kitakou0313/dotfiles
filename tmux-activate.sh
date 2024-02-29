#!/bin/bash
set -e

DIRECTORY_PATH=''
SESSION_NAME=''

# -cでDirectoryを指定可能
tmux new -s "${SESSION_NAME}" -d -c "${DIRECTORY_PATH}"
