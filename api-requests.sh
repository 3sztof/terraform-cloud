# Setup the auth bearer token in the environment
TOKEN=$TOKEN #<token generated from https://app.terraform.io/app/k-corp/settings/authentication-tokens>

# Get the variables present in the deployment (note that the AWS access keys are marked as sensitive, therefore the value is null in the reply body)
curl   --header "Authorization: Bearer $TOKEN"   --header "Content-Type: application/vnd.api+json" "https://app.terraform.io/api/v2/workspaces/ws-JziUF2t9wb6FBpfE/vars"

# Update the version_tag variable (the goal of the experiment was to change terraform's runtime variable by an API request from a Jenkins build of an ECR container - the image version has to be upated in the variable after build to deploy the newest image to ECS)
curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request PATCH \
  --data @./variable-update-request-payload.json \
  https://app.terraform.io/api/v2/workspaces/ws-JziUF2t9wb6FBpfE/vars/var-y16inZJCxiNatMPz