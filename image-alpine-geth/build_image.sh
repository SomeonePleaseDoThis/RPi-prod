local_image_name="geth-alpine64"
local_image_tag="1.5.5"
remote_image_name="geth64"
remote_image_tag=$local_image_tag-alpine
docker_hub_orga="spdt"


docker build --no-cache --tag=$local_image_name:$local_image_tag \
  --build-arg GETH_VERSION=v$local_image_tag \
  --build-arg NODE_USER=$USER \
  https://github.com/SomeonePleaseDoThis/RPi-prod.git#master:image-alpine-geth
docker tag $local_image_name:$local_image_tag $docker_hub_orga/$remote_image_name:$remote_image_tag
docker tag $local_image_name:$local_image_tag $docker_hub_orga/$remote_image_name:latest
docker push $docker_hub_orga/$remote_image_name:$remote_image_tag
docker push $docker_hub_orga/$remote_image_name:latest
