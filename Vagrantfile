Vagrant.configure("2") do |config|

    #############################################################
    # Local Virtual box Provider
    #############################################################
    config.vm.provider :virtualbox do |v|
        v.name = "vagrant.app"
        v.customize ["modifyvm", :id, "--memory", 1024]
        config.vm.box = "ubuntu/trusty64"
    end

    #############################################################
    # Ansible provisioning (you need to have ansible installed)
    #############################################################
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "ansible/playbook.yml"
        ansible.limit = 'all'
    end

    # Disable our shared folder
    config.vm.synced_folder '.', '/vagrant', disabled: true

end
