Vagrant.configure("2") do |config|
  ## Chose your base box
  config.vm.box = "precise64"

  config.vm.network :forwarded_port, host: 8000, guest: 80
  config.vm.network :forwarded_port, host: 8001, guest: 8888

  config.vm.provider :virtualbox do |vb|
     # Use VBoxManage to customize the VM. For example to change memory:
     vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
  end

  ## For masterless, mount your salt file root
  config.vm.synced_folder "salt/roots/", "/srv/salt/"

  ## Use all the defaults:
  config.vm.provision :salt do |salt|

    ## Minion config is set to ``file_client: local`` for masterless
    salt.minion_config = "salt/minion"

    salt.run_highstate = true

  end
end
