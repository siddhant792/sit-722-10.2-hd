#!/bin/bash

BOOK_IMAGE="gcr.io/sit-437003/book-catalog:latest"

echo "Building book catalog image..."
docker build -t $BOOK_IMAGE ./book_catalog
