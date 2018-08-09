## Inspectorio Python docker base image

Python version supported: `2.7`, `3.6`, `3.7`.

### Pre-installed packages

* supervisor
* nginx
* curl
* jq
* vim
* awscli
* pipenv
* gunicorn
* uwsgi
* uwsgitop

### Usage

```
FROM inspectorio/python:<python_version>

MAINTAINER Inspectorio DevOps <devops@inspectorio.com>

```
