#!/bin/sh

for secret in $(find /var/run/secrets -type f -exec basename {} \;); do
  cat "/run/secrets/${secret}" > "/secrets/${secret}";
done
sleep 300;
