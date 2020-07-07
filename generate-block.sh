#!/bin/bash
AUTH="-rpcuser=regtest -rpcpassword=regtest -rpcport=18443"

while true ;
do
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH generatetoaddress 1  "mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo" & sleep 15
done
