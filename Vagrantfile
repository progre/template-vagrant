Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  # config.vm.network :private_network, ip: "192.168.20.0"
  config.vm.provision "shell", :path => "provision.sh"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
end
