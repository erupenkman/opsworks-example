# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = 'opsworks-example-project-berkshelf'

  config.vm.box = 'ubuntu1204-opsworks';

  config.berkshelf.enabled = true

  config.vm.provision "shell", inline: "apt-get update > /dev/null"

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "opsworks-roles"

    chef.add_role "example-layer"
    chef.json = {
     :opsworks => {
        :ruby_stack => "ruby",
        :stack => {
          :name => "TestStack",
          "rds_instances"=> {}
        },
        :layers => {
          "example-layer" => {
            "instances" => {
              "php-app1" => {
                "private-ip" => "10.10.10.10",
                "infrastructure_class" => "ec2"
              }
            }
          }
        },
        :instance => {
          "infrastructure_class" => "ec2"
        }
      },
      :deploy => {
        "my-app" => {
          :application_type => "nodejs",
          :scm => {
            :scm_type => "git",
            :repository => "https://github.com/erupenkman/test-express.git"
          }
        }
      }
    }
  end
end
