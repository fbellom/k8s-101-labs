#!/usr/bin/bash

# Demo-a
kubectl create deployment nginx-a --image=nginx -n demo-a
kubectl expose deployment nginx-a --port=80 -n demo-a

# Demo-b
kubectl create deployment nginx-b --image=nginx -n demo-b
kubectl expose deployment nginx-b --port=80 -n demo-b
