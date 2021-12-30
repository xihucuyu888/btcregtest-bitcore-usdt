FROM node:10.17.0

RUN mkdir -p /opt && mkdir -p /opt/btc && mkdir -p opt/btc/data && mkdir -p /data/db 

RUN apt update \
    && apt-get install -y libzmq3-dev openssl build-essential screen vim net-tools \
    && npm install -g node-gyp \
    && npm install -g pm2

RUN cd /opt/btc \
    && git clone -b v8.1.0 https://github.com/bitpay/bitcore.git \
    && cd ./bitcore \
    && npm install \
    && cd ./packages/bitcore-node \
    && npm install

EXPOSE 3000
EXPOSE 18443

WORKDIR /opt/btc
RUN wget -L https://github.com/OmniLayer/omnicore/releases/download/v0.3.1/omnicore-0.3.1-x86_64-linux-gnu.tar.gz \
    && tar -xzvf omnicore-0.3.1-x86_64-linux-gnu.tar.gz \
    && cp ./omnicore-0.3.1/bin/omnicore-cli /usr/local/bin/ \
    && cp ./omnicore-0.3.1/bin/omnicored /usr/local/bin/ \
    && rm -rf omnicore*


RUN mkdir -p /opt/btc/data/regtest-omni
ADD btc.conf /opt/btc/
ADD bitcoin-22.0 /root/bitcoin-0.15.2
ADD bitcore.config.json /opt/btc/bitcore
COPY *.sh /opt/btc/
ADD usdt.conf /opt/btc
WORKDIR /opt/btc

ENTRYPOINT ./main.sh
