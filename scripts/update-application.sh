#!/bin/bash

# gcloud container clusters get-credentials mycluster --zone us-central1-c --project udacity-351902
kubectl config use-context  
echo "----------------GET NODES------------------"
kubectl get node
echo "----------------GET PODS-------------------"
kubectl get pod
echo "----------------GET DEPLOY-----------------"
kubectl apply -f nginx/deploy-udacity-nginx.yml
kubectl rollout restart deploy udacity-nginx
kubectl get deploy
echo "----------------GET SERVICE----------------"
kubectl expose deploy udacity-nginx --port=80 --type=LoadBalancer
kubectl get svc

