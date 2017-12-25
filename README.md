Virtual Box: Ubuntu 16.04LTS

Bash scripts for setting up development enviroments.

	Vagrant.configure("2") do |config|
	  config.vm.provision "shell", path: "https://raw.githubusercontent.com/.../script.sh"
	end

