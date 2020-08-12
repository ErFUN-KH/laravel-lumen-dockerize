#!/bin/bash

# Start migration.
if [ "true" == "$MIGRATE" ]; then
  /usr/local/bin/php /var/www/artisan migrate --force
fi

# Start the cron service.
if [ "true" == "$QUEUE" ]; then
  service cron start
fi

exec "$@"