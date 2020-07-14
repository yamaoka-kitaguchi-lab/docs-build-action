#!/bin/sh -xe

chmod -R +w /github/workspace
mkdocs build

echo "Build has successfully completed"
