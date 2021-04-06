#!/bin/sh

docker-compose exec clickhouse2 bash -c "
    export HOME=/var/lib/clickhouse/
    exec clickhouse client
"