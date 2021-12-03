#!/bin/bash
set -e
curl -fsSL https://raw.githubusercontent.com/tzaiyang/git-hooks/master/package.json >package.json
curl -fsSL https://raw.githubusercontent.com/tzaiyang/git-hooks/master/.gitignore >>.gitignore
echo "module.exports = {extends: ['@commitlint/config-conventional']}" >commitlint.config.js

# Node env
npm install
# Activate hooks
git init
npx husky install .git/hooks
npx husky add .git/hooks/commit-msg 'npx --no -- commitlint --edit "$1"'

