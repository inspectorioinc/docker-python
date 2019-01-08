## Inspectorio Python docker base image

Python version supported: `2.7`, `3.6`, `3.7`.

### Pre-installed packages

* [supervisor](https://github.com/Supervisor/supervisor)
* [nginx](https://nginx.org)
* [curl](https://curl.haxx.se/)
* [jq](https://stedolan.github.io/jq/)
* [vim](https://www.vim.org/)
* [newrelic](https://newrelic.com/python)
* [awscli](https://github.com/aws/aws-cli)
* [pipenv](https://github.com/pypa/pipenv)
* [poetry](https://github.com/sdispater/poetry)
* [gunicorn](https://gunicorn.org/)
* [uwsgi](https://uwsgi-docs.readthedocs.io/en/latest/)
* [uwsgitop](https://github.com/xrmx/uwsgitop)

### Usage

```
FROM inspectorio/python:<python_version>

MAINTAINER Inspectorio DevOps <devops@inspectorio.com>

```
