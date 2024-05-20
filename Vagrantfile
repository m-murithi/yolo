# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "geerlingguy/ubuntu2004"

  config.vm.network "forwarded_port", guest: 3000, host: 8000
  config.vm.network "forwarded_port", guest: 5000, host: 4527
  config.vm.network "forwarded_port", guest: 27017, host: 2345


end
