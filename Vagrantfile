# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # setup cache
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
    # setup PIP cache
    config.cache.enable :generic, { "pip" => { :cache_dir => "/var/cache/pip" } }
    config.vm.provision "file", source: "pip.conf", destination: "/home/vagrant/.pip/pip.conf"
  else
    print "vagrant-cachier plugin has not been found."
    print "You can install it by `vagrant plugin install vagrant-cachier`"
  end

  # eth0: NAT network - is created by default by Vagrant
  # eth1: host-only network - to access the VM using its IP address
  config.vm.network :private_network, ip: "192.168.42.11"

  config.vm.box = "trusty64"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.cpus = 4
  end
  #config.vm.provision :shell do |shell|
  #  shell.inline = "apt-get update && apt-get -y install git vim-gtk libxml2-dev libxslt1-dev libpq-dev python-pip libsqlite3-dev && apt-get -y build-dep python-mysqldb && pip install git-review tox && git clone git://git.openstack.org/openstack-dev/devstack && chown -R vagrant:vagrant devstack"
  #end
  config.vm.provision :shell do |shell|
    shell.inline = "apt-get update && apt-get -y install git && git clone git://git.openstack.org/openstack-dev/devstack && chown -R vagrant:vagrant devstack"
  end

end