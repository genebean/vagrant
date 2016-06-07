# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "cb2" do |cb2|
    cb2.vm.hostname = "cloudbolt"
    cb2.vm.network "forwarded_port", guest: 6060, host: 6060
    for i in 5900..5999
          cb2.vm.network :forwarded_port, guest: i, host: i
    end
    cb2.vm.box = "http://downloads.cloudbolt.io/vagrant/cloudbolt-vagrant.box"
    cb2.vm.provider "virtualbox" do |v|
      v.name = "cb2"
      v.memory = 2048
      v.cpus = 2
    end
  end
end
