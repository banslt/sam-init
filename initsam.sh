#!/bin/bash
sam build --use-container && aws-session-run sam deploy --stack-name aws-sam-cli-managed-default --template template.yaml --capabilities CAPABILITY_IAM
