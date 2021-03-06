# Provisioning and tests

This exercise utilised vagrant and VirtualBox to make sure the provision file passed all the tests.

#### Pre-requisites
- Vagrant
- Virtual box
- ruby
- bundler

#### Installation

##### Pre-requisites:
- install Vagrant
- install VirtualBox
- install Ruby
- install Bundler

To get this box running:
1. clone the repo
2. make sure you are on the root of the project and can see the Vagrant file
3. then run:
```bash
vagrant up
```

Now you can see nginx running on 2 locations:
- ip: 192.168.10.100
- development.local/

#### Tests

```bash
cd starter-code/environment/spec-tests
bundle install
rake spec
```

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
```bash
vagrant up
```
### How do I destroy a VM?
```bash
vagrant destroy
```
### How do I re re-run the provision script without killing/destroy the VM?
```bash
vagrant reload
```
## Provisioning

After identifying what packages are missing from the vagrant up output and running the tests you should search the relevant code to install the right packages.

- Be careful with placement of syntax!

#### Nginx:
```ruby
sudo apt-get update -y

sudo apt-get install nginx -y

service nginx start

```

#### Nodejs

```Ruby
apt-get install nodejs npm -y

npm install -g pm2

sudo nvm use 6

curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

sudo npm install pm2 -g
```


#### Considerations
- Do I have ruby?
- Do I have bundler?
- Have I installed all the ruby dependencies to run the test? - bundle install
how do I run the test? rake spec
- Am I in the right location to run these commands?
