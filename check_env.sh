#!/usr/bin/env bash
set -e

for file in $(ls $HOME/.git-template/hooks|grep -v "configs"); do
  if ! [ -x $HOME/.git-template/hooks/$file ]; then
    chmod +x $HOME/.git-template/hooks/$file
  fi
done


# Check pre-commit
if ! command -v pre-commit > /dev/null; then
  echo 'Error: `pre-commit` not found.  please run `pip install pre-commit` to install pre-commit. \nGet help: https://github.com/pre-commit/pre-commit' 1>&2
  exit 1
fi

# Check commitlint
if ! command -v pre-commit > /dev/null; then
  echo 'Error: `commitlint` not found. please run `npm install -g @commitlint/{config-conventional,cli}` to install commitlint. \nGet help: https://github.com/conventional-changelog/commitlint'
fi

# Check stand-version
if ! command -v standard-version > /dev/null 2>&1 ; then
  echo 'Error: `standard-version` not found. please run `npm install -g standard-version` to install standard-version. \nGet help: https://github.com/conventional-changelog/standard-version' 1>&2
fi

# Check git-flow
if ! command -v git-flow > /dev/null 2>&1 ; then
  echo 'Warning: `git-flow` not found. \nGet help: https://github.com/petervanderdoes/gitflow-avh/wiki/Installation' 1>&2
fi
