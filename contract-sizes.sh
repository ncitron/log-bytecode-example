dapp build

LOGGER_BIG_SIZE=$(cat out/dapp.sol.json | jq '.. | .LoggerBig? | select(. != null) | .evm.bytecode.object' | wc -c)
LOGGER_BIG_SIZE=$[$LOGGER_BIG_SIZE-3]
LOGGER_SMALL_SIZE=$(cat out/dapp.sol.json | jq '.. | .LoggerSmall? | select(. != null) | .evm.bytecode.object' | wc -c)
LOGGER_SMALL_SIZE=$[$LOGGER_SMALL_SIZE-3]

echo "LoggerBig bytecode size: $LOGGER_BIG_SIZE"
echo "LoggerSmall bytecode size: $LOGGER_SMALL_SIZE"