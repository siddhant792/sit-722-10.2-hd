#!/bin/bash

BOOK_IMAGE="gcr.io/sit-437003/book-catalog:latest"

echo "Logging into Google Container Registry with Docker..."
echo $GCP_SA_KEY | docker login -u _json_key --password-stdin https://gcr.io

echo "Pushing book catalog image to GCR..."
docker push $BOOK_IMAGE

echo "Push completed successfully."
