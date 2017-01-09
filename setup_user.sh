#configure opensuse
echo "set root password"
passwd root
echo $2 > /etc/hostname
useradd -m -G wheel $1
echo "set $1 user pwd"
passwd $1
zypper in docker htop nano
systemctl start docker
docker run hello-world
systemctl enable docker
usermod -a -G docker $1
