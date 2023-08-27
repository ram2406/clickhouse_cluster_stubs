 envsubst < /tmp/tmpl/config.xml > /etc/clickhouse-server/config.xml
 envsubst < /tmp/tmpl/users.xml > /etc/clickhouse-server/users.xml
#
#  cat /etc/clickhouse-server/config.xml
id
 /entrypoint.sh