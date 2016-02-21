# -*- mode: ruby -*-
# vi: set ft=ruby :

hosts = {
    "web01" => {"ip" => "192.168.1.201", "bridge" => "en0: Wi-Fi (AirPort)"},
    "db"    => {"ip" => "192.168.1.202", "bridge" => "en0: Wi-Fi (AirPort)"}
}

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # Use the same key for each machine
    config.ssh.insert_key = false
    config.ssh.private_key_path = "~/.vagrant.d/insecure_private_key"
    # web01
    config.vm.define "web01" do |web01|
      web01.vm.box = "debian/wheezy64"
      web01.vm.hostname = "%s" % "web01"
      # Create network
      web01.vm.network "public_network", ip: hosts["web01"]["ip"] ,bridge: hosts["web01"]["bridge"]
      web01.ssh.forward_agent = true
    end
    # DB
    config.vm.define "db" do |db|
      db.vm.box = "debian/wheezy64"
      db.vm.hostname = "%s" % "db"
      # Create internal network
      db.vm.network "public_network", ip: hosts["db"]["ip"] ,bridge: hosts["db"]["bridge"]
      db.ssh.forward_agent = true
    end
end
