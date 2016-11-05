sudo apt-get git
sudo apt-get install -y python-pip

sudo pip install --upgrade pip
sudo pip install -U os-testr
/home/vagrant/devstack/tools/create-stack-user.sh
sudo apt-get  install -y bridge-utils
git clone git://git.openstack.org/openstack-dev/devstack && chown -R vagrant:vagrant devstack
sudo chown stack:stack devstack
cd devstack
./stack.sh