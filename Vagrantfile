Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.10.100"

  config.hostsupdater.aliases = ["development.local"]

  # how to send code to your VM
  config.vm.synced_folder("app", "/app")

  # running a shell script
  config.vm.provision "shell", path: "environment/provision.sh"


end
