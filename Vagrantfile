# -*- mode: ruby -*-
# vi: set ft=ruby :

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
      web01.ssh.forward_agent = true
    end
    # DB
    config.vm.define "db" do |db|
      db.vm.box = "debian/wheezy64"
      db.vm.hostname = "%s" % "db"
      # Create internal network
      db.ssh.forward_agent = true
    end
end
