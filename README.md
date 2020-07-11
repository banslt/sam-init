# sam-init

Deploy a SAM app fast without having to deal with -g prompt mode...

1. Execute initsam.sh to deploy sam self managed bucket.
2. Then, you can deploy your sam application with ``aws-session-run sam deploy --s3-bucket "$(aws-session-run aws s3api list-buckets | jq -r '.Buckets[] | select( .Name | contains("aws-sam") ) | .Name')" --region us-east-1 --parameter-overrides 'Key1=Value1 Key2=Value2 Key3=Value3' --s3-prefix YOURSAMAPPNAME --stack-name YOURSAMAPPNAME --capabilities CAPABILITY_IAM --template template.yaml --no-confirm-changeset
`` 
3. Done.

You can for instance use that in an ansible playbook to do multiple cross account deployments at once.
