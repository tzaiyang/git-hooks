#!/bin/bash
curl -fsSL https://raw.githubusercontent.com/tzaiyang/git-hooks/master/package.json >package.json
echo "module.exports = {extends: ['@commitlint/config-conventional']}" >commitlint.config.js

# Node env
npm install
# Activate hooks
git init
npx husky install
npx husky add .husky/commit-msg 'npx --no -- commitlint --edit "$1"'

