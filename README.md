Git hooks to validate development specifications such as:
1. [semantic version](https://semver.org/)
2. [conventional commit](https://www.conventionalcommits.org/)
3. [branching model](https://nvie.com/posts/a-successful-git-branching-model/)
4. languanges specification such as python, go...
## Get Started
1. Install git hooks
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/tzaiyang/git-hooks/master/build.sh)"
```

2. [Install gitflow-avh](https://github.com/petervanderdoes/gitflow-avh/wiki/Installation) and manage branchs according Vincent Driessen's [branching model](https://nvie.com/posts/a-successful-git-branching-model/).
```bash
# Initialize a new git repo with support for the branching model.
git flow init
# start a new feature branch
git flow feature start <name> [<base>]
```

3. Git commit, the commit message should be structured as follows:
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

4. Release with [semantic version](https://semver.org/) according [conventional commit](https://www.conventionalcommits.org/) specification:
```bash
npm run release
```

## References
1. https://www.conventionalcommits.org/
2. https://semver.org/
