## Inspectorio Python 2.7 base image

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
FROM inspectorioinc/python:2.7

ADD . /app

COPY config/etc /etc/

CMD ["/app/entrypoint.sh"]

```
