#!/bin/sh -xe

chmod -R +w /github/workspace
git config --global --add safe.directory /github/workspace
mkdocs build

echo "Build has successfully completed"
