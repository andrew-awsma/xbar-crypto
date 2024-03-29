#!/bin/bash

# Shows DOGE price in USD.
#
# <xbar.title>DOGE USD</xbar.title>
# <xbar.version>2.1.7</xbar.version>
# <xbar.author>andrew-awsma</xbar.author>
# <xbar.author.github>andrew-awsma</xbar.author.github>
# <xbar.desc>Shows DOGE price in USD.</xbar.desc>
# <xbar.image></xbar.image>
#
# by andrew-awsma

echo -n "DOGE $"; curl -s "https://api.coinbase.com/v2/prices/DOGE-USD/spot" | tr -d '"' | awk -F'amount:' '{print $2}' | cut -c -5