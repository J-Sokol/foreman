#!/bin/bash
set -ev
if [[ $( git diff --name-only HEAD~1..HEAD webpack/ .travis.yml package.json | wc -l ) -ne 0 ]]; then
  npm run test;
fi
