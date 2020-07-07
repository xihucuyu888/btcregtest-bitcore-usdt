# btcregtest-bitcore-usdt
Dockerized Bitcoin Regtest Server with Insight API &amp; omni USDT for development and testing your BTC/USDT applications.

Start in Docker: `docker-compose up -d`

## BTC

Get BTC Balance for address: `http://localhost:3001/api/BTC/regtest/address/mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo/balance`

I recommend reviewing the [Bitcore Node API Documentation](https://github.com/bitpay/bitcore/blob/master/packages/bitcore-node/docs/api-documentation.md) so you can use all the features of this image.

### How does it work?
This Docker image will start a Bitcoin Regtest Server with the Bircore Node so you can fetch UTXO's balances, and everything else. This Docker image is for developers who want to test their Bitcoin applications without waiting for transactions to be confirmed on the real BTC testnet3 blockchain.

The wallets below have a couple BTC in them so you can begin testing quickly! **New blocks are mined automatically every 5 seconds!**

### Wallet Private Keys
The private keys are based on a mnemonic phrase by default. For ease of use, use these private keys while interacting with your application.
```
            ADDRESS                |                     PRIVATE KEY

mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo | cVVGgzVgcc5S3owCskoneK8R1BNGkBveiEcGDaxu8RRDvFcaQaSG
mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW | cRGkipHiYFRSAgdY9NjUT7egHTuNXoKYWQea3kWVbkSJAs4VDi8r
mtdVMhiWWmegkkBhzYDrz84yfgofPNLNmb | cTc8XCQZuSt5E1LArqCxyaXhn1cQkvcBMAGQ159raPSQTuBpHWdi
mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5 | cQ9JwsoYHC2Md41uDbczDVpsuWAeYjDDrDiGbCBZ4stZhZvLZWj8
mnk2URqujBqMEfhALMby1WZHoBRauW37Kg | cQrY4VypAuemJtHmNNJLyx1SNjY7mpfkdQEJpccpLSvan5YoMAkM
```
Mnemonic phrase: `myth like bonus scare over problem client lizard pioneer submit female collect`

## USDT

### Config

```
rpcport:8432
rpcuser:regtest
rpcpassword:regtest
propertyID:3
```
Get USDT Balance for address:
```
curl -L -X POST 'http://regtest:regtest@localhost:8432' \
--data-raw '{"jsonrpc": "2.0",
"id":1,
"method":"omni_getbalance",
"params":
   ["mnk2URqujBqMEfhALMby1WZHoBRauW37Kg",3]
}'
```
I recommend reviewing the [omni API Documentation](https://github.com/OmniLayer/omnicore/blob/master/src/omnicore/doc/rpc-api.md) so you can use all the features of this image.

### Wallet Private Keys
The private keys are based on a mnemonic phrase by default. For ease of use, use these private keys while interacting with your application.
```
            ADDRESS                |                     PRIVATE KEY

mnk2URqujBqMEfhALMby1WZHoBRauW37Kg | cQrY4VypAuemJtHmNNJLyx1SNjY7mpfkdQEJpccpLSvan5YoMAkM
```



