ARG WALG_TAG=alpine
ARG PG_TAG=alpine

FROM etarasenko/walg:$WALG_TAG AS walg

# Default

FROM postgres:$PG_TAG
COPY --from=walg /usr/local/bin/pg-wal-g /usr/local/bin/wal-g
