#!/bin/bash
set -e
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
# if ! command -v husky > /dev/null 2>&1 ; then
# npm install -g husky
# fi
if ! command -v commitlint > /dev/null 2>&1 ; then
  npm install -g commitlint
  npm install -g @commitlint/config-conventional
fi

if ! command -v standard-version > /dev/null 2>&1 ; then
  npm install -g standard-version
fi

git init # confirm this is a git repo
echo 'commitlint --edit "$1"' >.git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

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
# git config --unset-all core.hooksPath
pre-commit install
