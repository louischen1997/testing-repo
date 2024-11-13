FROM alpine
# Env provided by the pipeline
ARG BUILD_IMAGE_NAME
# ARG BUILD_SOURCEBRANCHNAME For multi version of same template (un-used)
ARG BUILD_SOURCEVERSION

ENV TEMPLATES_FILE_PATH=/murano/solution_templates
ENV REPO_NAME=$BUILD_IMAGE_NAME
ENV BRANCH_NAME=master
# The branche name is set in the bizapi exchange element url
ENV COMMIT_ID=$BUILD_SOURCEVERSION

COPY . ./template

# Generate the file requested by pegasus-api to version the template
RUN echo $BUILD_SOURCEVERSION > ./template/last_commit.txt

CMD ["/bin/sh", "./template/bootstrap.sh"]
