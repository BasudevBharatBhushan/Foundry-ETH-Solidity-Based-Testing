curl -L https://foundry.paradigm.xyz | bash

foundryup

install forge 

install cast

forge init --force

forge install Openzeppelin/openzeppelin-contracts

remap in openzepplin in foundry.toml

forge build

forge test



yarn add hardhat
yarn hardhat ---create empty hardhat.config.js
yarn hardhat node

forge create StakeContract --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://127.0.0.1:8545/