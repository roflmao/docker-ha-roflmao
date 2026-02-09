FROM ghcr.io/home-assistant/home-assistant:stable
MAINTAINER Rolf Larsen

RUN pip3 install git+https://github.com/felipediel/python-broadlink.git@patch-24 sqlalchemy-cockroachdb --force-reinstall --no-deps
