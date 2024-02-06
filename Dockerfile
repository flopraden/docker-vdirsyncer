FROM python:3.11-slim
RUN set -eux; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends git libxml2 libxslt1.1 zlib1g; \
  apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	rm -rf /var/lib/apt/lists/*;
RUN pip install --ignore-installed  vdirsyncer[etesync,google]@git+https://github.com/flopraden/vdirsyncer.git@5a730849b4422181cc0b92cff1e5f265d36c877f aiohttp-oauthlib
ADD scripts/*  /srv/scripts/
RUN chmod +x /srv/scripts/*

CMD /srv/scripts/entry.sync