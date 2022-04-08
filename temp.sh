#!/bin/sh

mysqldump -P DB_PORT_R -h DB_HOST_R -u DB_USER_R --password=DB_PASS_R SCHEMA_R > /db-dumps/SCHEMA_R/SCHEMA_R-dump-$(date +%F_%H-%M-%S).sql
echo "$(date +%F_%H-%M-%S): Saved dump file for SCHEMA_R schema."

find /db-dumps/SCHEMA_R -name "*.sql" -type f -mtime +10 -delete 