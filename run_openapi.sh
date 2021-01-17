#!/bin/sh
mv ~/Downloads/docs ./welfarebrothers_api.yaml
openapi-generator generate -i welfarebrothers_api.yaml -g dart -o api_client/ --additional-properties pubName=welfarebrothers_for_worker_api_client --additional-properties  pubLibrary=welfarebrothers_for_worker_api_client --additional-properties nullableFields=true
git checkout api_client/lib/model/facility_worker_profile*
