# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
#SYNCED_FOLDER = ENV['SYNCED_FOLDER'] || "~/app"

# Vagrant.require_plugin 'vagrant-digitalocean'
# Vagrant.require_plugin 'vagrant-omnibus'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.omnibus.chef_version = :latest
    config.cache.auto_detect = true
    config.vm.host_name = 'app'
    #config.vm.box = 'lucid32'

    config.vm.provider :virtualbox do |vb, override|
        vb.customize ['modifyvm', :id, '--memory', '512']
        override.vm.box = 'lucid32'
        override.vm.box_url = 'http://files.vagrantup.com/lucid32.box'
    end

    config.vm.provider :vmware_fusion do |v|
        v.vmx["memsize"] = "1024"
    end

    config.vm.provider :digital_ocean do |provider, override|
        provider.client_id = '<< CLIENTE_ID >>'
        provider.api_key = '<< API KEY >>'
        provider.image = 'Ubuntu 12.04.4 x64'
        provider.region = 'Amsterdam 2'
        provider.size = '512MB'
        provider.ssh_key_name = 'KEY_NAME'
        override.ssh.private_key_path = 'KEY_PATH'
        override.vm.box = 'digital_ocean'
        override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"
        provider.ca_path = "/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"
    end

    config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = 'cookbooks'
        chef.add_recipe 'main'
        chef.run_list = [
            "recipe[apt]", 
            "recipe[java]", 
            "recipe[tomcat]", 
            "recipe[mysql::server]", 
            "recipe[mysql::client]"]
    end
end
