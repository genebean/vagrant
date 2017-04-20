# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "cb2" do |cb2|
    cb2.vm.box = "http://downloads.cloudbolt.io/vagrant/cloudbolt-vagrant.box"
    cb2.vm.hostname = "cloudbolt"

    cb2.vm.network "forwarded_port", guest: 6060, host: 6060
    for i in 5900..5999
      cb2.vm.network :forwarded_port, guest: i, host: i
    end

    if File.exists?('./cloudbolt-upgrader-latest.tgz')
      cb2.vm.provision "shell", inline: 'echo "Found /vagrant/cloudbolt-upgrader-latest.tgz so skipping download"'
    else
      cb2.vm.provision "shell", inline: <<-EOF1
        echo "Downloading cloudbolt-upgrader-latest.tgz..."
        wget --quiet -O /vagrant/cloudbolt-upgrader-latest.tgz http://downloads.cloudbolt.io/cloudbolt-upgrader-latest.tgz
      EOF1
    end

    cb2.vm.provision "shell", inline: <<-EOF2
      rm -rf /root/cloudbolt_upgrader_*
      tar -xzvf /vagrant/cloudbolt-upgrader-latest.tgz -C /root/
      su - -c "cd /root/cloudbolt_upgrader_* && ./upgrade_cloudbolt.sh"
    EOF2

    cb2.vm.provider "virtualbox" do |v|
      v.name = "cb2"
      v.memory = 2048
      v.cpus = 2
    end
  end
end
