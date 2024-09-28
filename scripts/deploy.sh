#!/bin/bash

GKE_CLUSTER_NAME="task10"
GKE_REGION="europe-west1"

echo "Creating secret for image pulling..."
kubectl create secret docker-registry gcr-secret \
  --docker-server=https://gcr.io \
  --docker-username=_json_key \
  --docker-password="${GCP_SA_KEY}"

DEPLOYMENT_YAML="./scripts/kubernetes/deployment.yaml"

echo "Deploying applications to GKE..."
kubectl apply -f $DEPLOYMENT_YAML

echo "Deployment complete."
