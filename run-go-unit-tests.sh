#!/usr/bin/env bash
FILES=$(go list   | grep -v /vendor/)

go test ./api/...

returncode=$?
if [ $returncode -ne 0 ]; then
  echo "unit tests failed"
  exit 1
fi
