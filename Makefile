-include .env
build:; forge build

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --account sepoliakey0 --sender 0xdf41dF2AbE44ef83a2159320a6B27ecB2B46342e --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv