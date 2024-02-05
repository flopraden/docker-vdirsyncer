FROM python:3.11-slim
RUN set -eux; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends git libxml2 libxslt1.1 zlib1g; \
  apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	rm -rf /var/lib/apt/lists/*;
RUN pip install --ignore-installed  vdirsyncer@git+https://github.com/flopraden/vdirsyncer.git@876cbf07525c01519d226dd62ab5e6cb672d370b aiohttp-oauthlib
ADD scripts/*  /srv/scripts/
RUN chmod +x /srv/scripts/*

CMD /srv/scripts/entry.sync