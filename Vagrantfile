Vagrant.configure('2') do |config|
    config.vm.box = "centos64-x86_64-20140116"

    # fix issues with slow dns https://www.virtualbox.org/ticket/13002
    config.vm.provider :virtualbox do |vb, override|
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    end

    config.vm.network "forwarded_port", guest: 63001, host: 63001
    config.vm.network "forwarded_port", guest: 63002, host: 63002
    config.vm.network "forwarded_port", guest: 63003, host: 63003

    config.vm.provision :shell, :privileged => false, :path => "install.sh"
end
