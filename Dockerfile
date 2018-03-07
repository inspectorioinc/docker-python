FROM python:2.7

COPY requirements.txt /tmp/requirements.txt

RUN apt-get -qq -y update \
&&  apt-get install -qq -y supervisor lsb-release jq curl vim-nox openssh-client \
&&  curl -sSL http://nginx.org/keys/nginx_signing.key | apt-key add - \
&&  echo "deb http://nginx.org/packages/$(lsb_release -is | tr '[:upper:]' '[:lower:]')/ $(lsb_release -cs) nginx" > /etc/apt/sources.list.d/nginx.list \
&&  apt-get -qq -y update \
&&  apt-get -qq -y install nginx \
&&  ln -sf /dev/stdout /var/log/nginx/access.log \
&&  ln -sf /dev/stderr /var/log/nginx/error.log \
&&  rm -f /etc/nginx/conf.d/* /etc/nginx/sites-enabled/* \
&&  mkdir -p /var/log/supervisor \
&&  pip install --no-cache-dir -U -r /tmp/requirements.txt \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
