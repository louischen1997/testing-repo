#!/bin/bash
set -e

# Copy project to shared folder under the repo name

mkdir -p $TEMPLATES_FILE_PATH/$REPO_NAME-$BRANCH_NAME
cp -R ./template/* $TEMPLATES_FILE_PATH/$REPO_NAME-$BRANCH_NAME/

# Will match the template URL reference: https://github.com/service/<servicename>/tree/<branchname>
