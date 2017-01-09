#configure opensuse
echo "set root password"
passwd root
useradd -m -G wheel $0
echo "set user pwd"
passwd $0
zypper in docker
systemctl start docker
docker run hello-world
systemctl enable docker
usermod -a -G docker $0
