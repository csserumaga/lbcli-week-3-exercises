# Create a native segwit address and get the public key from the address.
ADDR=$(bitcoin-cli -regtest -rpcwallet="builderswallet" -named getnewaddress label="" address_type="bech32")
bitcoin-cli -regtest -rpcwallet="builderswallet" getaddressinfo "$ADDR" | jq -r '.pubkey'

