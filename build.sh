#!/bin/bash
set -e
if [[ -f "./package.json" ]]; then
  echo "Error: package.json has exist"
  exit 1
fi
if [[ -f "./.pre-commit-config.yaml" ]]; then
  echo "Error: .pre-commit-config.yaml has exist"
  exit 1
fi
if [[ -f "./commitlint.config.js" ]]; then
  echo "Error: commitling.config.js has exist"
  exit 1
fi
curl -fsSL https://raw.githubusercontent.com/tzaiyang/git-hooks/master/package.json >package.json
curl -fsSL https://raw.githubusercontent.com/tzaiyang/git-hooks/master/.pre-commit-config.yaml >.pre-commit-config.yaml
echo "module.exports = {extends: ['@commitlint/config-conventional']}" >commitlint.config.js

# node.js env
if ! command -v node > /dev/null 2>&1 ; then
    if [ "$(uname -s)" == "Darwin" ]; then
      echo "installing node..."
      curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*).pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"
    else
      echo "Error: node.js is not installed" >&2
      exit 1
    fi
fi
npm install
git init
npx husky install .git/hooks # activate hooks
npx husky add .git/hooks/commit-msg 'npx --no -- commitlint --edit "$1"'

# python env
if ! command -v python > /dev/null 2>&1 ; then
    echo "Error: python is not installed" >&2
    exit 1
fi
# install pre-commit
if ! command -v pre-commit > /dev/null 2>&1 ; then
    echo "installing pre-commit"
    pip install pre-commit
#    conda install -c conda-forge pre-commit
fi
git config --unset-all core.hooksPath
pre-commit install
