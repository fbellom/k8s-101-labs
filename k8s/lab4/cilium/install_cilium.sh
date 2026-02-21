#!/usr/bin/bash

helm install cilium cilium/cilium  \
  --namespace kube-system  \
  --set kubeProxyReplacement=true  \
  --set k8sServiceHost=172.18.0.4  \
  --set k8sServicePort=6443  \
  --set hubble.enabled=true  \
  --set hubble.relay.enabled=true  \
  --set hubble.ui.enabled=true  \
  --set l2announcements.enabled=true  \
  --set externalIPs.enabled=true  \
  --wait --timeout 5m