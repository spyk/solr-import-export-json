#!/bin/bash

PARAMS="$*"

if [ "A$PARAMS" == "A" ]
then
  PARAMS="--help"
fi

export JAVA_OPTS=-Dfile.encoding=utf-8

java $JAVA_OPTS -jar target/solr-import-export-1.0.jar $PARAMS
