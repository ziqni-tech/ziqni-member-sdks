#!/bin/bash

# Execute this script from inside the openapi folder
openapi-generator-cli version 5.2.1
SPEC_FILE=../ziqni-member-api.yml
CONF_FILE=ziqni-member-api.config.yml
GEN_DIR=../../java/target/generated-sources/openapi/src/main/java/com/ziqni/member/sdk
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


openapi-generator-cli  generate -g java -i $SPEC_FILE -c $CONF_FILE -o ./generated --additional-properties=asyncNative=true --additional-properties=library=native -t ./templates

# Copy the updated docs
rm -rf ../../java/docs
mkdir ../../java/docs
cp -v ./generated/docs/* ../../java/docs/

mkdir -p $GEN_DIR
mkdir -p $GEN_DIR/api
mkdir -p $GEN_DIR/model

# Copy the new sources - openapi/java/generated/src/main/java/com/ziqni/member/sdk/api
cp -rf ./generated/src/main/java/com/ziqni/member/sdk/api/*Ws.java $GEN_DIR/api/

# Copy the new sources - openapi/java/generated/src/main/java/com/ziqni/member/sdk/model
cp -rf ./generated/src/main/java/com/ziqni/member/sdk/model $GEN_DIR

cp -rf ./generated/src/main/java/com/ziqni/member/sdk/ZiqniMemberApiFactory.java $GEN_DIR
cp -rf ./generated/src/main/java/com/ziqni/member/sdk/ApiException.java $GEN_DIR
cp -rf ./generated/src/main/java/com/ziqni/member/sdk/JSON.java $GEN_DIR
cp -rf ./generated/src/main/java/com/ziqni/member/sdk/RFC3339DateFormat.java $GEN_DIR