# Docker-pgautoupgrade-pgrepack

Adds the [pg_repack](https://github.com/reorg/pg_repack) utility to the [pgautoupgrade](https://github.com/pgautoupgrade/docker-pgautoupgrade) docker image.

[Docker hub](https://hub.docker.com/r/dessalines/docker-pgautoupgrade-pgrepack)

## Usage

`docker pull dessalines/docker-pgautoupgrade-pgrepack:TAG`

```
# Install the extension
docker exec -it CONTAINER psql -U MY_USER -d MY_DB -c "CREATE EXTENSION pg_repack;"

# Run repack on a sample table (dry run)
docker exec -it CONTAINER pg_repack -U MY_USER -d MY_DB --table MY_TABLE --dry-run
```
