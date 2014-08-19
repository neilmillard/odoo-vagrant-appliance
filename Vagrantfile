VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 8069, host: 18069
  config.vm.network "forwarded_port", guest: 80, host: 1080

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "puppet/modules"
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "site.pp"
    puppet.hiera_config_path = "puppet/conf/hiera.yaml"
    puppet.working_directory = "/tmp/vagrant-puppet-3"
  end
end
