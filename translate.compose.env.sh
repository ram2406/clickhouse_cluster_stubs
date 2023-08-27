env -i $(cat .env | xargs) envsubst < compose.yaml

# while ; do env $(cat .env | xargs) envsubst < compose.yaml > compose.debug.yaml && sleep 10; done 