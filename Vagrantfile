Vagrant.configure("2") do |config|

  #Ubuntu 16.04 LTS
  config.vm.box = "ubuntu/xenial64"

  #Mapping localhost to guest:3000 - rails server
  config.vm.network :forwarded_port, guest: 3000, host: 80

  #DB managers use project config files to connect, so it's easier if
  # we map them on localhost ports.

  #Accessing postgresql using localhost on host
  config.vm.network :forwarded_port, guest: 5432, host: 5432

  #Accessing mysql using localhost on host
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096" # set as needed
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "ubuntu_setup.sh"
  config.vm.provision "shell", path: "postgresql.sh"
  #	config.vm.provision "shell", path: "vagrant_user.sh", privileged: false

end