FROM pgautoupgrade/pgautoupgrade:18-alpine

ARG PG_REPACK_VERSION=1.5.3

RUN apk add --no-cache --virtual .build-deps \
  build-base \
  postgresql-dev \
  lz4-dev \
  zlib-dev \
  gawk \
  wget \
  unzip \
  clang21 \
  llvm21 \
  && wget -O /tmp/pg_repack.zip https://github.com/reorg/pg_repack/archive/refs/tags/ver_${PG_REPACK_VERSION}.zip \
  && unzip /tmp/pg_repack.zip -d /tmp \
  && cd /tmp/pg_repack-ver_${PG_REPACK_VERSION} \
  && make \
  && make install \
  && cd / \
  && rm -rf /tmp/pg_repack* \
  && apk del .build-deps
