#!/usr/bin/env bash

for file in $(ls $HOME/.git-template/hooks|grep -v "configs"); do
  if ! [ -x $HOME/.git-template/hooks/$file ]; then
    chmod +x $HOME/.git-template/hooks/$file
  fi
done


# Check pre-commit
if ! command -v pre-commit > /dev/null; then
  echo 'Error: `pre-commit` not found.  please run `pip install pre-commit` to install pre-commit. Get help: https://github.com/pre-commit/pre-commit' 1>&2
fi

# Check commitlint
if ! command -v commitlint > /dev/null; then
  echo 'Error: `commitlint` not found. please run `npm install -g @commitlint/{config-conventional,cli}` to install commitlint. Get help: https://github.com/conventional-changelog/commitlint' 1>&2
fi

# Check stand-version
if ! command -v standard-version > /dev/null 2>&1 ; then
  echo 'Error: `standard-version` not found. please run `npm install -g standard-version` to install standard-version. Get help: https://github.com/conventional-changelog/standard-version' 1>&2
fi

# Check talisman
if ! command -v talisman > /dev/null 2>&1 ; then
  echo 'Error: `talisman` not found. you can run `brew install talisman` in MacOS X to install talisman. Get help: https://github.com/thoughtworks/talisman#installation-to-a-single-project' 1>&2
fi

# Check git-flow
if ! command -v git-flow > /dev/null 2>&1 ; then
  echo 'Warning: `git-flow` not found. Get help: https://github.com/petervanderdoes/gitflow-avh/wiki/Installation' 1>&2
fi
