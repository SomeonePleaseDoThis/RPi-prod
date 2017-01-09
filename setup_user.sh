#configure opensuse
echo "set root password"
passwd root
echo $1 > /etc/hostname
useradd -m -G wheel $0
echo "set user pwd"
passwd $0
zypper in docker htop nano
systemctl start docker
docker run hello-world
systemctl enable docker
usermod -a -G docker $0
