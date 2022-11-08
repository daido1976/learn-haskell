#!/bin/bash

paths=$(ls -d src/*.hs)
for path in $paths; do
  echo "${path}"
  doctest "${path}"
done
