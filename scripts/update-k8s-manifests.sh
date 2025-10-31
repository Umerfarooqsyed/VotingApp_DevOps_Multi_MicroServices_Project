#!/bin/bash

set -x

# Set the repository URL, I am not directly adding complete url for safety purpose. I have secured these tokens as variables in seperate secret file on my local.
REPO_URL="https://$ACCESS_TOKEN@dev.azure.com/$ORGANIZATION_NAME/$AZURE_PROJECTNAME/_git/$AZURE_REPONAME"

# Clone the git repository into the /tmp directory
git clone "$REPO_URL" /tmp/temp_repo

# Navigate into the cloned repository directory
cd /tmp/temp_repo

# Make changes to the Kubernetes manifest files
# For example, let's say you want to change the image tag in a deployment.yaml file
sed -i "s|image:.*|image: $REGISTERY_NAME/$IMAGE_REPOSITORY:$TAG|g" k8s/deployment.yaml

# Add the modified files
git add .

# Commit the changes
git commit -m "Update Kubernetes manifest"

# Push the changes back to the repository
git push

# Cleanup: remove the temporary directory
rm -rf /tmp/temp_repo