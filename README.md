# Provisioning and tests

This exercise utilised vagrant and VirtualBox to make sure the provision file passed all the tests.

## Vagrantfile

## What is it?

Vagrantfile is a Ruby file used to configure Vagrant on a per-project basis.

## What goes on the vagrant file?

It's main function is to describe the virtual machines required for a project as well as how to configure and provision these machines.

## Virtual Machine
### How do I send a folder into my VM?
```ruby
config.vm.synced_folder("app", "/app")
```
### How do I write a script (sh) for my VM?
```ruby
config.vm.provision "shell", path: "environment/provision.sh"
```

### How do I spin up a VM?

vagrant up

### How do I destroy a VM?

vagrant destroy

### How do I re re-run the provision script without killing/destroy the VM?

vagrant reload

## Considerations

### Do I have ruby?
Yes

### Do I have bundler?
have I installed all the ruby dependencies to run the test? - bundle install
how do I run the test? rake spec
Am I in the right location to run these commands?
