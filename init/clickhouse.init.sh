#!/bin/bash
set -e

clickhouse client -n <<-EOSQL
    CREATE  DATABASE IF NOT EXISTS dr;
    CREATE  TABLE IF NOT EXISTS dr.replicated_example
    (
        ID UInt32,
        Name String
    ) ENGINE = ReplicatedMergeTree('/clickhouse/tables/sharded_replicated/{shard}', '{replica}')
    ORDER BY (ID);
EOSQL