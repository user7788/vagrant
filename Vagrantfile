Vagrant.configure("2") do |config|

  #Ubuntu 16.04 LTS
  config.vm.box = "ubuntu/xenial64"

  #Rails server
  config.vm.network :forwarded_port, guest: 3000, host: 80

  #Remote connection to Postgresql
  config.vm.network :forwarded_port, guest: 5432, host: 5432

  #Remote connection to Mysql
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  #Remote connection to Mongodb
  config.vm.network "forwarded_port", guest: 27017, host: 27017

  #Remote connection to Mailcatcher
  config.vm.network "forwarded_port", guest: 1080, host: 1080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096" # set as needed
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "ubuntu_setup.sh"
  config.vm.provision "shell", path: "postgresql.sh"
  # config.vm.provision "shell", path: "mysql.sh"
  # config.vm.provision "shell", path: "mongo.sh"
  config.vm.provision "shell", path: "node_with_nvm.sh", privileged: false
  config.vm.provision "shell", path: "ruby_with_rbenv.sh", privileged: false
  config.vm.provision "shell", inline: "git config --global core.filemode false", privileged: false
  config.vm.provision "shell", inline: "git config --global core.autocrlf true", privileged: false
end