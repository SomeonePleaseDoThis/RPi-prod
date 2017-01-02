host_chain_path=$HOME/chain
container_chain_path=chain

parity_image_name="parity64"
parity_version="1.4.7"
docker_hub_orga="spdt"

./build_image.sh $parity_image_name $parity_version

docker tag $parity_image_name:$parity_version $docker_hub_orga/$parity_image_name:$parity_version
docker push $docker_hub_orga/$parity_image_name:$parity_version
