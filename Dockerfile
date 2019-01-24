FROM postgres:${POSTGRES_BASE_TAG:-10.6}

RUN apt-get update \
 && apt-get install --no-install-recommends -y postgresql-${PG_MAJOR}-ip4r \
 && rm -rf /var/lib/apt/lists/*
