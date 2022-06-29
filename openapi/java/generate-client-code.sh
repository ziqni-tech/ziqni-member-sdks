#!/bin/bash

# Execute this script from inside the openapi folder
openapi-generator-cli version 6.0
SPEC_FILE=../ziqni-gamification-api.yml
CONF_FILE=ziqni-gamification-api.config.yml
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

if [[ -d "$GEN_DIR" ]]; then
  echo "$GEN_DIR exists."
  rm -rf ./generated
  echo "$GEN_DIR deleted."
  mkdir generated
  echo "$GEN_DIR created."

  openapi-generator-cli  generate -g java -i $SPEC_FILE -c $CONF_FILE -o ./generated -t ./templates --additional-properties=asyncNative=true --additional-properties=library=native

  # Copy the updated docs
  rm -rf ../../java/docs
  mkdir ../../java/docs
  cp -v ./generated/docs/* ../../java/docs/

  mkdir -p ../../java/src/generated
  mkdir -p ../../java/src/generated/java/com/ziqni/gamification/client/api
  mkdir -p ../../java/src/generated/java/com/ziqni/gamification/client/model

  # Copy the new sources - openapi/java/generated/src/main/java/com/ziqni/gamification/client/api
  cp -rf ./generated/src/main/java/com/ziqni/gamification/client/api/*Ws.java ../../java/src/generated/java/com/ziqni/gamification/client/api/

  # Copy the new sources - openapi/java/generated/src/main/java/com/ziqni/gamification/client/model
  cp -rf ./generated/src/main/java/com/ziqni/gamification/client/model ../../java/src/generated/java/com/ziqni/gamification/client

  cp -rf ./generated/src/main/java/com/ziqni/gamification/client/ApiClientFactoryWs.java ../../java/src/generated/java/com/ziqni/gamification/client
  cp -rf ./generated/src/main/java/com/ziqni/gamification/client/ApiException.java ../../java/src/generated/java/com/ziqni/gamification/client
  cp -rf ./generated/src/main/java/com/ziqni/gamification/client/JSON.java ../../java/src/generated/java/com/ziqni/gamification/client
  cp -rf ./generated/src/main/java/com/ziqni/gamification/client/RFC3339DateFormat.java ../../java/src/generated/java/com/ziqni/gamification/client

else
  echo "Directory '<project-root>/openapi/java/$GEN_DIR' not found"
fi

