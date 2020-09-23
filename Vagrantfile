# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "macinbox"
  
  config.vm.synced_folder ".", "/Users/vagrant/Desktop/ckaserer.macos", type: "rsync"

  config.vm.provision "bootstrap", type: "shell", privileged: false, path: "bootstrap.sh"
  
  config.vm.provision "ansible.cfg", type: "shell", privileged: false, 
    inline: "printf '[defaults]\nroles_path=/Users/vagrant/Desktop/' >ansible.cfg"
  
  config.vm.provision "playbook" do |ansible|
    # become = true
    galaxy_role_file = "requirements.yml"
    ansible.playbook = "playbook.yml"
    extra_vars = {
      macos_mas_apps = []
    }
  end

end
