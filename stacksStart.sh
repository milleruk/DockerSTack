#!/bin/bash

for file in $PWD/stacks/enabled/*.yml; do
  filename=$(basename -- "$file")
  name="${filename%.*}"
  docker-compose -p "$name" -f stacks/enabled/$filename up -d --remove-orphans
done