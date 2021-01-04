#!/bin/sh
mv ~/Downloads/docs ./openapi.yaml
openapi-generator generate -i openapi.yaml -g dart -o welfarebrothers_for_worker_api_client/ --additional-properties pubName=welfarebrothers_for_worker_api_client --additional-properties  pubLibrary=welfarebrothers_for_worker_api_client --additional-properties disallowAdditionalPropertiesIfNotPresent=true
