host_chain_path=/home/gilles/chain
container_chain_path=chain

parity_source="http://d1h4xl4cr1h0mo.cloudfront.net/v1.4.7/aarch64-unknown-linux-gnu/parity_1.4.7_arm64.deb"
parity_package=$(echo $parity_source | egrep -o "parity_[0-9]+.[0-9]+.[0-9]+_arm64.deb")

parity_image_name="parity64"
parity_version=$(echo $parity_package | egrep -o "[0-9]+.[0-9]+.[0-9]+")
docker_hub_orga="spdt"

docker build --no-cache \
  --tag=$parity_image_name:$parity_version \
  --build-arg PARITY_VERSION=$parity_version \
  --build-arg PARITY_PKG_PATH=$parity_source \
  --build-arg NODE_USER=$USER \
  https://github.com/SomeonePleaseDoThis/RPi-prod.git#master:Parity-Image-Builder

docker tag $parity_image_name:$parity_version $docker_hub_orga/$parity_image_name:$parity_version
docker tag $parity_image_name:$parity_version $docker_hub_orga/$parity_image_name:latest
docker push $docker_hub_orga/$parity_image_name:$parity_version
docker push $docker_hub_orga/$parity_image_name:latest
