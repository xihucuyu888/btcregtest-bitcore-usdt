AUTH="-rpcuser=regtest -rpcpassword=regtest -regtest"

/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"'$1'":'$2'}'
