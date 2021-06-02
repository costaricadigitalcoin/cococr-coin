#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.cococostaricacore/cococostaricad.pid file instead
cococostarica_pid=$(<~/.cococostaricacore/testnet3/cococostaricad.pid)
sudo gdb -batch -ex "source debug.gdb" cococostaricad ${cococostarica_pid}
