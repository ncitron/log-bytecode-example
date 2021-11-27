# Contract Sizes with Indexed vs Normal Logs

This repo shows two contracts which emit the same events, except LoggerBig uses a normal event parameter, and LoggerSmall uses an indexed parameters.

## Running
To profile the contract bytecode size, run:
```
./contract-sizes.sh
```

## Results
Remarkably, the indexed logs contract is just 370 bytes, while the unindexed log contract is 516 bytes. This is because the log opcodes in the evm load the values from memory, which require first loading the local variable from the stack into memory. Meanwhile indexed logs are loaded directly from the stack, which does not have the overhead of moving the variable into memory.