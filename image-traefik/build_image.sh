local_image_name="traefik64"
remote_image_name=$local_image_name
docker_hub_orga="spdt"

traefik_binary="https://github.com/containous/traefik/releases/download/v1.1.2/traefik_linux-arm64"
traefik_version=$(echo $traefik_binary | egrep -o "[0-9]+.[0-9]+.[0-9]+")

local_image_tag=$traefik_version
remote_image_tag=$local_image_tag

docker build --no-cache --tag=$local_image_name:$local_image_tag \
  --build-arg TRAEFIK_VERSION=v$local_image_tag \
  --build-arg INST_PATH="" \
  https://github.com/SomeonePleaseDoThis/RPi-prod.git#master:image-traefik
docker tag $local_image_name:$local_image_tag $docker_hub_orga/$remote_image_name:$remote_image_tag
docker tag $local_image_name:$local_image_tag $docker_hub_orga/$remote_image_name:latest
docker push $docker_hub_orga/$remote_image_name:$remote_image_tag
docker push $docker_hub_orga/$remote_image_name:latest
