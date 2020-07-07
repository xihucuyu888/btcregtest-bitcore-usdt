#!/bin/bash
rm -rf /opt/btc/data/regtest
echo "start bitcoind"
/root/bitcoin-0.15.2/bin/bitcoind -conf=/opt/btc/btc.conf -deprecatedrpc=accounts
echo "bitcoind end"
