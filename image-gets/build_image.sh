local_image_name="geth-alpine64"
local_image_tag="1.5.5"
remote_image_name="geth64"
remote_image_tag=$local_image_tag-alpine
docker_hub_orga="spdt"


./build_image.sh $local_image_name $local_image_tag
docker tag $local_image_name:$local_image_tag $docker_hub_orga/remote_image_name:$remote_image_tag
docker push $docker_hub_orga/$remote_image_name:$remote_image_tag
