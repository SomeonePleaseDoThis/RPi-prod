#configure opensuse
echo "set root password"
passwd root
echo $2 > /etc/hostname
useradd -m -G wheel $1
echo "set $1 user pwd"
passwd $1
zypper in docker htop nano
service docker start
docker run aarch64/hello-world
systemctl enable docker
usermod -a -G docker $1
