# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [2.4.0](https://github.com/tzaiyang/git-hooks/compare/v2.3.1...v2.4.0) (2021-12-20)


### Features

* remove commitlint install dependency ([167a1d7](https://github.com/tzaiyang/git-hooks/commit/167a1d7c452ccb862f6bb49f71beccc82fceb178))
* remove versionrc auto copy ([ad789fe](https://github.com/tzaiyang/git-hooks/commit/ad789fe69dbb2886e471d5b2c71c5e078ba5d3df))


### Bug Fixes

* fix no golang file when check go file ([572444b](https://github.com/tzaiyang/git-hooks/commit/572444b268424e26914625c0c0ce227dacb402f9))
* go vet error in pre-commit hook ([b30e146](https://github.com/tzaiyang/git-hooks/commit/b30e14624dab60ce2d3bd64041aa2685847514b8))
* golang check and autopep8 line-length and tag check ([4ca1fb3](https://github.com/tzaiyang/git-hooks/commit/4ca1fb33d4ef98d15912d128e55e2ab5c0337e2f))
* tag pattern ([4d49820](https://github.com/tzaiyang/git-hooks/commit/4d498205be12b19d3dac27c7984c8de875da7bbc))

### [2.3.1](https://github.com/tzaiyang/git-hooks/compare/v2.3.0...v2.3.1) (2021-12-07)


### Features

* add standard-version config file and auto add by post-commit ([24afb83](https://github.com/tzaiyang/git-hooks/commit/24afb8316b941f5e1a3ff9068c595c386e77fde5))
* remove duplicate branch check in pre-push ([f9ec96e](https://github.com/tzaiyang/git-hooks/commit/f9ec96ef8b5a1e6d6727ccef93aec9d4fac3a426))


### Bug Fixes

* fix check tag when repo has no tag ([8aac451](https://github.com/tzaiyang/git-hooks/commit/8aac4510c981bd934cda29360d951bfd21b05d58))

## [2.3.0](https://github.com/tzaiyang/git-hooks/compare/v2.2.0...v2.3.0) (2021-12-06)


### Features

* turn off taliman default ([474b946](https://github.com/tzaiyang/git-hooks/commit/474b94672c8d70e2f96121b4e7e503604bebba8c))

## [2.2.0](https://github.com/tzaiyang/git-hooks/compare/v2.1.1...v2.2.0) (2021-12-06)


### Features

* add check branch to pre-commit and pre-push ([ad6e46f](https://github.com/tzaiyang/git-hooks/commit/ad6e46fc343d2a38c0ba9f1e9b64edead06fe3e3))
* add talisman to pre-commit ([fe66e3d](https://github.com/tzaiyang/git-hooks/commit/fe66e3d5cd04e455eb5a43656e6f640d94f2987a))

### [2.1.1](https://github.com/tzaiyang/git-hooks/compare/v2.1.0...v2.1.1) (2021-12-06)


### Bug Fixes

* pre-push check tag ([7e1aea1](https://github.com/tzaiyang/git-hooks/commit/7e1aea132040fbfe672600b6e58b38fd267ec5da))

## [2.1.0](https://github.com/tzaiyang/git-hooks/compare/v2.0.1...v2.1.0) (2021-12-06)


### Features

* optimize activate method ([ce4538b](https://github.com/tzaiyang/git-hooks/commit/ce4538b47dde959ff6a87731d9928879d743a747))


### Bug Fixes

* fix check env bug ([e08653a](https://github.com/tzaiyang/git-hooks/commit/e08653a6eee4cb8431815f8d041a6738ec153504))

### [2.0.1](https://github.com/tzaiyang/git-hooks/compare/v2.0.0...v2.0.1) (2021-12-05)


### Bug Fixes

* fix config path error in `git init` activate method ([78f0230](https://github.com/tzaiyang/git-hooks/commit/78f0230dce43a7d326a99596e113ae0731c3abdd))

## [2.0.0](https://github.com/tzaiyang/git-hooks/compare/v1.2.0...v2.0.0) (2021-12-05)


### ??? BREAKING CHANGES

* change install and activate method.

### Features

* the new management method for hooks ([6054905](https://github.com/tzaiyang/git-hooks/commit/6054905b40eae35810018cfb1956212b0048dfb7))

### [1.1.1](https://github.com/tzaiyang/git-hooks/compare/v1.1.0...v1.1.1) (2021-12-04)

## [1.2.0](https://github.com/tzaiyang/git-hooks/compare/v1.1.0...v1.2.0) (2021-12-04)


### Features

* install js tool to global env ([4b0f577](https://github.com/tzaiyang/git-hooks/commit/4b0f57792a6ec0ec8339717f46bf384a2c7b5d29))


### Bug Fixes

* fix build.sh ([a212161](https://github.com/tzaiyang/git-hooks/commit/a212161f908943b8516fd2d6a7f78177e734143e))

## [1.1.0](https://github.com/tzaiyang/git-hooks/compare/v1.0.0...v1.1.0) (2021-12-03)


### Features

* add pre-commit hook ([ca4166b](https://github.com/tzaiyang/git-hooks/commit/ca4166b01de50593362c27e3bb7c08824529e64e))
* change git hooks directory ([5e747f5](https://github.com/tzaiyang/git-hooks/commit/5e747f59fd0827db4a649cb51b5951770d242fae))

## 1.0.0 (2021-12-03)


### Features

* add commitlint and standard-version ([78aea56](https://github.com/tzaiyang/git-hooks/commit/78aea568df621bd2d7c2e8d96c63b401fda25d5a))
