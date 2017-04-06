node_source="7.7.2-slim"
node_version=$(echo ${node_source} | egrep -o "[0-9]+.[0-9]+.[0-9]+")
echo $node_package

node_image_name="polo64"
echo ${node_version}
docker_hub_orga="spdt"

docker build --no-cache \
  --tag=${node_image_name}:$p{node_version} \
  --build-arg NODE_VERSION=${node_version} \
  --build-arg NODE_PKG_PATH=${node_source} \
  https://github.com/SomeonePleaseDoThis/RPi-prod.git#master:image-node-polo

docker tag ${node_image_name}:${node_version} ${docker_hub_orga}/${node_image_name}:${node_version}
docker tag ${node_image_name}:${node_version} ${docker_hub_orga}/${node_image_name}:latest
docker push ${docker_hub_orga}/${node_image_name}:${node_version}
docker push ${docker_hub_orga}/${node_image_name}:latest
