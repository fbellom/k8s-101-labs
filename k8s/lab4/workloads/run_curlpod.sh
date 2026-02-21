#!/usr/bin/bash

if [[ ! -n $1 ]];
then
  NAMESPACE="demo-a"
else
  NAMESPACE="$1"
fi    

echo "Running a Pod for NS $NAMESPACE"  

kubectl run curlpod  \
  --rm  \
  -ti  \
  --image=curlimages/curl  \
  --restart=Never  \
  -n "$NAMESPACE" \
  -- /bin/sh