#!/bin/bash
DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
ENV_FILE="$DIR/../nuklear-server/.env"
if [ -f $ENV_FILE ] ; then
  export $(cat $ENV_FILE | grep -E "NODE_ENV|POSTGRES_PASSWORD|TLD" | xargs)
else
  echo "Error: .env file missing. Could not extract environment variables."
  exit 1
fi

echo "Stopping $NODE_ENV environment (www.nuklear.$TLD)"
docker-compose down
