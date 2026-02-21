#!/usr/bin/bash

kubectl port-forward  \
  -n kube-system  \
  svc/hubble-ui 12000:80  \
  --address 0.0.0.0