local_image_name="netstats64"
local_image_tag="1.0.0"
remote_image_name="eth-netstats64"
remote_image_tag=$local_image_tag
docker_hub_orga="spdt"


docker build --no-cache --tag=$local_image_name:$local_image_tag .
docker tag $local_image_name:$local_image_tag $docker_hub_orga/remote_image_name:$remote_image_tag
docker push $docker_hub_orga/$remote_image_name:$remote_image_tag
