FROM homeassistant/home-assistant:latest
MAINTAINER Rolf Larsen

RUN apt-get update \
  && apt-get install -y git \
  && cd /tmp && git clone https://github.com/roflmao/open-zwave.git && cd open-zwave && git checkout ozwfix_eurotronic_ztrm2 \
  && make && make install \
  && ln -s /usr/local/lib64/libopenzwave.so /usr/lib/ \
  && ln -s /usr/local/lib64/libopenzwave.so.1.4 /usr/lib/ \
  && pip3 install --upgrade rflink \
  && pip3 install --no-cache-dir python_openzwave==0.4.3 --upgrade --no-deps --force-reinstall --install-option="--flavor=shared"
