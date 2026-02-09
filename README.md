# docker-ha-roflmao

Custom Home Assistant Docker image with patched Broadlink and CockroachDB support.

## What's included

Based on `ghcr.io/home-assistant/home-assistant:stable` with:

- [python-broadlink](https://github.com/felipediel/python-broadlink) (patch-24 branch)
- [sqlalchemy-cockroachdb](https://pypi.org/project/sqlalchemy-cockroachdb/)

## Pull the image

```bash
docker pull ghcr.io/roflmao/docker-ha-roflmao:latest
```

Or a specific Home Assistant version:

```bash
docker pull ghcr.io/roflmao/docker-ha-roflmao:2025.2.1
```

## Automated builds

A GitHub Actions workflow checks for new Home Assistant releases every 6 hours. When a new release is detected, it automatically builds and pushes to GHCR with both `:latest` and the HA version tag.

Builds can also be triggered manually from the Actions tab.

## Build locally

```bash
bash build.sh
```

Override the image name or tag with environment variables:

```bash
IMAGE=my-registry/my-image TAG=dev bash build.sh
```
