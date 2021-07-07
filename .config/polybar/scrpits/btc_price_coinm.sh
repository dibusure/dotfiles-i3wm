#!/bin/sh

DATA=$(curl -s 'https://blockchain.info/ru/ticker' | jq ".RUB.last")
echo $DATA
#printf "%0.0f\n" $DATA
