#!/bin/sh

set -e

pull_request_count_call=$(curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $1" https://api.github.com/repos/$4/pulls)
length=$(echo $pull_request_count_call | jq '. | length')

if [ $length -gt $2 ]
then
  if ! [[ -z "$5" ]]
  then
    curl \
      -X POST \
      -H "Accept: application/vnd.github+json" \
      -H "Authorization: Bearer $1" \
      https://api.github.com/repos/$4/issues/$3/comments \
      -d "{ \"body\": \"$5\" }"
  fi

  curl \
    -X PATCH \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $1" \
    https://api.github.com/repos/$4/pulls/$3 \
    -d '{ "state":"close" }'
fi
