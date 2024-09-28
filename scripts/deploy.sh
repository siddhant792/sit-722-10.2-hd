#!/bin/bash

GKE_CLUSTER_NAME="task10"
GKE_REGION="europe-west1"

echo "Logging into Google Cloud..."
echo "${GCP_SA_KEY}" | gcloud auth activate-service-account --key-file=/dev/stdin

echo "Retrieving GKE credentials..."
gcloud container clusters get-credentials $GKE_CLUSTER_NAME --region $GKE_REGION

DEPLOYMENT_YAML="./scripts/kubernetes/deployment.yaml"

echo "Deploying applications to GKE..."
kubectl apply -f $DEPLOYMENT_YAML

echo "Deployment complete."