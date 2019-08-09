FROM node:12.6.0
ARG uid=500
RUN mkdir -p /code
WORKDIR /code

RUN apt-get update && apt-get install -y python-dev screen && cd /tmp/ && \
git clone https://github.com/facebook/watchman.git && cd watchman && git checkout v4.9.0 && ./autogen.sh && \
./configure && make -j4 && make install  && cd / && rm -rf /tmp/watchman

# RUN npm set progress=false && \
RUN npm install -g expo-cli && useradd -m -u $uid -s /bin/bash expo-user
