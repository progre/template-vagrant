Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # config.vm.network :private_network, ip: "192.168.20.0"
  config.vm.provision "shell", :path => "provision.sh"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
end
