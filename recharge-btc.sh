#!/bin/bash
AUTH="-rpcuser=regtest -rpcpassword=regtest -rpcport=18443"

/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH getblockchaininfo
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH importprivkey "cVVGgzVgcc5S3owCskoneK8R1BNGkBveiEcGDaxu8RRDvFcaQaSG"
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH generatetoaddress 100  "mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo"
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH generatetoaddress 100 "mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW"
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH generatetoaddress 1  "mtdVMhiWWmegkkBhzYDrz84yfgofPNLNmb"
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH generatetoaddress 1  "mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5"
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH generatetoaddress 1  "mqVkRyxSy5raNpbPKZ24tQMyPFH5PbLPBT"
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH getblockchaininfo

/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo":10}'
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW":10}'
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"mtdVMhiWWmegkkBhzYDrz84yfgofPNLNmb":10}'
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5":10}'
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"n2SPUwgcYNvmeAEZ8uNJt45b9A6Aevdrb6":10}'
/root/bitcoin-0.15.2/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"mnk2URqujBqMEfhALMby1WZHoBRauW37Kg":10}'
