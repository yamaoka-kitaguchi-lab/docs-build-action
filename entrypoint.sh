#!/bin/sh -xe

chmod -R +w /github/workspace
git config --global --add safe.directory *
mkdocs build

echo "Build has successfully completed"
