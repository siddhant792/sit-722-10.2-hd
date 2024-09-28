#!/bin/bash

GKE_CLUSTER_NAME="task10"
GKE_REGION="europe-west1"

echo "Logging into Google Cloud..."
gcloud auth activate-service-account --key-file=credentials.json

echo "Retrieving GKE credentials..."
gcloud container clusters get-credentials $GKE_CLUSTER_NAME --region $GKE_REGION

echo "Creating secret for image pulling..."
kubectl create secret docker-registry gcr-secret --docker-server=https://gcr.io --docker-username=_json_key --docker-password="$(cat credentials.json)"

DEPLOYMENT_YAML="./scripts/kubernetes/deployment.yaml"

echo "Deploying applications to GKE..."
kubectl apply -f $DEPLOYMENT_YAML

echo "Deployment complete."
