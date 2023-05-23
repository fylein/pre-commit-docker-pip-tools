# pre-commit docker pip tools #

Dockerized pre-commit hook for pip-tools,
useful for compiling `requirements.in` file in an `x86_64` environment when working on an `arm64` (Apple M1) machine.

References:

https://pre-commit.com/#new-hooks

https://pre-commit.com/#docker

https://github.com/jazzband/pip-tools


## Usage ##
* You can add `pip-compile` hook in your pre-commit hooks by adding `pre-commit-docker-pip-tools` repo in your 
`.pre-commit-config.yaml` file as follows.
```yaml
default_stages: [commit]

repos:
  - repo: https://github.com/fylein/pre-commit-docker-pip-tools
    rev: 0.0.2
    hooks:
      - id: pip-compile
        name: pip-compile requirements.in
        args: [requirements.in, --output-file, requirements.txt]
        files: ^requirements.(in|txt)$
```

## Local Development ##

### Running hook ###
*  Run below command to install pre commit, if it is not already installed.
pre commit version must be at least 3.3.1.
```shell
brew install pre-commit
```
* Run below command to run hook locally
```shell
 pre-commit try-repo ./ pip-compile --verbose --all-files
```
* To clean pre-commit cache run below command
```shell
pre-commit clean
```