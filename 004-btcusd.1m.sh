#!/bin/bash

# Shows BTC price in USD.
#
# <xbar.title>BTC USD</xbar.title>
# <xbar.version>2.1.7</xbar.version>
# <xbar.author>andrew-awsma</xbar.author>
# <xbar.author.github>andrew-awsma</xbar.author.github>
# <xbar.desc>Shows BTC price in USD.</xbar.desc>
# <xbar.image></xbar.image>
#
# by andrew-awsma

echo -n "BTC $"; curl -s "https://api.coinbase.com/v2/prices/BTC-USD/spot" | tr -d '"' | awk -F'amount:' '{print $2}' | cut -c -5 | sed -re 's/([0-9])([0-9]{3})($|[^0-9])/\1,\2\3/'