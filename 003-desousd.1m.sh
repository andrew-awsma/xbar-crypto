#!/bin/bash

# Shows DESO prices in USD.
#
# <xbar.title>DESO USD</xbar.title>
# <xbar.version>2.1.7</xbar.version>
# <xbar.author>andrew-awsma</xbar.author>
# <xbar.author.github>andrew-awsma</xbar.author.github>
# <xbar.desc>Shows DESO price in USD.</xbar.desc>
# <xbar.image></xbar.image>
#
# by andrew-awsma

echo -n "DESO $"; curl -s "https://api.coinbase.com/v2/prices/DESO-USD/spot" | tr -d '"' | awk -v FS="(amount:|}})" '{printf "%.2f\n", $2}'
