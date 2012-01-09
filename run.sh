#!/bin/sh
export PYTHONPATH=.
portflag=""
if test $# -gt 0
then
  echo Starting the server on port $1.
  portflag="-p $1"
else
  echo Starting the server on the default port.
  echo Use /run.sh [port] to run on another port.
fi
mod_pywebsocket/standalone.py -m handler_map.txt $portflag
