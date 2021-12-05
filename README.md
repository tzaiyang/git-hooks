Git hooks and tools to validate development specifications such as:
1. [Semantic version](https://semver.org/)
2. [Conventional commit](https://www.conventionalcommits.org/)
3. Vincent Driessen's [branching model](https://nvie.com/posts/a-successful-git-branching-model/)
4. Languanges specification such as python, go...
## Get Started
1. Download git hooks to init.templateDir
    ```bash
    git config --global init.templateDir $HOME/.git-template
    git clone https://github.com/tzaiyang/git-hooks $HOME/.git-template
    # Check enviorment and dependencies
    bash $HOME/.git-template/check_env.sh
    ```
   Two ways to activate git hooks:

    ```bash
    git init
    # or change hooks path
    git config core.hooksPath $HOME/.git-template/hooks
    ```

2. Manage branchs according Vincent Driessen's [branching model](https://nvie.com/posts/a-successful-git-branching-model/) with [gitflow-avh](https://github.com/petervanderdoes/gitflow-avh/wiki/Installation) tool.
    ```bash
    # Initialize a new git repo with support for the branching model.
    git flow init
    # start a new feature branch
    git flow feature start <name> [<base>]
    ```

3. Git commit, the commit message should be structured as follows, More detail in [conventional commit](https://www.conventionalcommits.org/):
    ```
    <type>[optional scope]: <description>

    [optional body]

    [optional footer(s)]
    ```

4. Release with [semantic version](https://semver.org/) spec tag according [conventional commit](https://www.conventionalcommits.org/) specification:
    ```bash
    standard-version
    ```

## References
1. https://www.conventionalcommits.org/
2. https://semver.org/
