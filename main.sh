#!/usr/bin/env bash
cd /opt/btc

./start-btc.sh
./start-usdt.sh 
netstat -ntlp
pm2 start ./start-node.sh --name=bitcore-node
sleep 10
./recharge-btc.sh


# generate block every 5 seconds
sleep 5
pm2 start ./generate-block.sh --name=generate-block

# create usdt token
sleep 5
./create-usdt.sh

# send usdt demo
sleep 5
./create-usdt-tx.sh

tail -f /dev/null
