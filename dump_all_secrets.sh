#!/usr/bin/env bash

allsecrets=($(docker secret ls --format '{{printf "%s " .Name}}' | tr -d '\n'))

docker service create -d \
  $(for secret in "${allsecrets[@]}";
    do echo --secret $secret;
  done) \
  --name dumpsecrets \
  --mount source=dumpsecrets,target=/secrets \
support/dumpsecrets:latest
