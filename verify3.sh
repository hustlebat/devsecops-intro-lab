#!/bin/bash

OUTPUT=$(bandit insecure_code.py)

if echo "$OUTPUT" | grep -q "Issue"; then
  echo "Well done! You have identified security issues using Bandit."
  exit 0
else
  echo "Verification failed. Make sure you have run Bandit on insecure_code.py."
  exit 1
fi
