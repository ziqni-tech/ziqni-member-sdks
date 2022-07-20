#!/bin/bash

# Execute this script from inside the openapi folder
openapi-generator-cli version 6.0
SPEC_FILE=../ziqni-member-api.yml
CONF_FILE=ziqni-member-api.config.yml
GEN_DIR=generated
FILE=generate-client-code.sh


if [ -z "$1" ]; then
  echo "No argument supplied"
else
  cd ../openapi/java || exit
fi

echo "++++++++++ GENERATING ++++++++++"
pwd

if [ -f "$FILE" ]; then
  echo "$FILE exists."
else
  echo "$FILE does not exist."
  exit
fi

  openapi-generator-cli generate -g  javascript -i $SPEC_FILE -c $CONF_FILE -o ./generated -t ./templates

  cd ../../javascript || exit

#  rm -rf ./*
#  cp -rf ../openapi/javascript/generated/* ./
#
#  npm install
#  npm link
#  npm run build
#  npm install @ziqni-tech/member-api-client

