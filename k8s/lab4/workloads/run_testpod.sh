#!/usr/bin/bash

if [[ ! -n $1 ]];
then
  NAMESPACE="demo-a"
else
  NAMESPACE="$1"
fi    

kubectl run testpod  \
  --rm  \
  -ti  \
  --image=busybox  \
  --restart=Never  \
  -n "$NAMESPACE"  \
  -- /bin/sh