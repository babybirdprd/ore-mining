#!/bin/bash

while true; do
    ore --rpc https://api.mainnet-beta.solana.com --keypair "C:\Users\Steve Business\.config\solana\id.json" --priority-fee 1 mine --threads 4

    if [ $? -eq 0 ]; then
        break
    else
        echo "There is an error. Wait a moment before trying again..."
        sleep 5
    fi
done
