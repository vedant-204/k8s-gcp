#!/bin/bash

for instance in worker-0 worker-1; do
  gcloud compute scp ca.pem ${instance}-key.pem ${instance}.pem ${instance}:~/
done
