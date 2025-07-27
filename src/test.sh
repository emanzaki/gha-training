#!/bin/bash

#src/test.sh
Expected="Hello, Test!"
OUTPUT=$(node -e "console.log(require('./src/app.js')('Test!'))")
if [ "$OUTPUT" == "$Expected" ]; then
  echo "Test passed!"
else
  echo "Test failed! Expected '$Expected' but got '$OUTPUT'"
  exit 1
fi