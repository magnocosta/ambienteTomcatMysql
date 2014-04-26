# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
#SYNCED_FOLDER = ENV['SYNCED_FOLDER'] || "~/app"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.omnibus.chef_version = :latest
    config.vm.box = 'lucid32'
    #config.vm.box_url = 'http://files.vagrantup.com/precise64_vmware.box'
    #config.vm.host_name = 'app'
    config.cache.auto_detect = true

    config.vm.network :private_network, ip: '192.168.33.10'

    config.vm.network :forwarded_port, guest: 8080, host: 8080
    config.vm.network :forwarded_port, guest: 3000, host: 3000
    config.vm.network :forwarded_port, guest: 4321, host: 4321

    #config.vm.synced_folder "/vagrant", :nfs => true

    config.vm.provider :virtualbox do |vb|
        vb.customize ['modifyvm', :id, '--memory', '1024']
    end

    config.vm.provider :vmware_fusion do |v|
        v.vmx["memsize"] = "1024"
    end

    config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = 'cookbooks'
        chef.add_recipe 'main'
        chef.run_list = [
            "recipe[apt]", 
            "recipe[java]", 
            "recipe[tomcat]", 
            "recipe[mysql::server]", 
            "recipe[mysql::client]"
       ]
    end
end
