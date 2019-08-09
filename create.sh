#!/bin/bash

# cassandra
envsubst < ./pvc/biobert.yaml | kubectl apply -f -
envsubst < ./pod/biobert.yaml | kubectl apply -f -
