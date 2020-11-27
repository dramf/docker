#!/bin/sh

echo "Hello from Entrypoint"

if [ "$RUNNER_NAME" != "" ]; then
  echo "Running via $RUNNER_NAME"
fi