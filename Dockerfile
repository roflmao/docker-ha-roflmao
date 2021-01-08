FROM homeassistant/home-assistant:latest
MAINTAINER Rolf Larsen

RUN pip3 install git+https://github.com/felipediel/python-broadlink.git@patch-24 --force-reinstall --no-deps
