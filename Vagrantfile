# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "cloudbolt" do |cloudbolt|
    cloudbolt.vm.hostname = "cloudbolt"
    cloudbolt.vm.box = "http://downloads.cloudbolt.io/vagrant/centos6.box"
    cloudbolt.vm.synced_folder "shared/", "/shared"
    cloudbolt.vm.box_check_update = true
    cloudbolt.vm.network "private_network", ip: "192.168.33.10"
    cloudbolt.vm.provider "virtualbox" do |v|
      v.name = "cloudbolt"
      v.memory = "#{ENV['CB_MEM']}"
      v.cpus = 2
    end
    cloudbolt.vm.provision "shell", path: "prep.sh"
    cloudbolt.vm.provision "shell" do |s|
      s.inline = <<-SHELL
      echo "Downloading CloudBolt #{ENV['CB_VER']}"
      #sudo wget -q http://downloads.cloudbolt.io.s3.amazonaws.com/6.0-alpha4/cloudbolt_installer_#{ENV['CB_VER']}.tgz
      echo "http://downloads.cloudbolt.io.s3.amazonaws.com/#{ENV['CB_VER_SHORT']}/cloudbolt_installer_#{ENV['CB_VER']}.tgz"
      sudo wget -q http://downloads.cloudbolt.io.s3.amazonaws.com/#{ENV['CB_VER_SHORT']}/cloudbolt_installer_#{ENV['CB_VER']}.tgz
      echo "Extracting CloudBolt #{ENV['CB_VER']}"
      sudo tar xzf cloudbolt_installer_#{ENV['CB_VER']}.tgz
      echo "Installing CloudBolt #{ENV['CB_VER']} Dependencies"
      sudo yum -q -y install $(cat /shared/yumrequirements.txt)
      echo "Installing CloudBolt #{ENV['CB_VER']}"
      #sudo runuser -c "~vagrant/cloudbolt_installer_#{ENV['CB_VER']}/install_cloudbolt.sh force"
      sudo env "PATH=/usr/local/bin:/usr/local/sbin:$PATH" cloudbolt_installer_#{ENV['CB_VER']}/install_cloudbolt.sh force
      SHELL
    end
  end
end
