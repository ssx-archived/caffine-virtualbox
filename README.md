# Caffine
Caffine is a simple LAMP environment, provisioning handled by ansible with docker 
and virtualbox providers for local development. The components are:
  
  - [Ansible playbooks](https://github.com/ssx/caffine-ansible)
  - [Dockerfile to build image](https://github.com/ssx/caffine-docker)
  - [Vagrantfile to build for Virtualbox](https://github.com/ssx/caffine-virtualbox)
        
---

# Development Stack
This stack contains PHP5.6, nginx, node, composer and more. For a full picture, 
take a look through the Ansible playbooks.

---

# Use without building
If you wish to use this development environment without building the images, use the 
Hashicorp hosted image:
 
    vagrant init ssx/caffine; vagrant up --provider virtualbox 
 
---

# Pull Ansible submodules
You'll need to pull in the shared ansible scripts, using:

    git submodule init
    git submodule update


This should create/update the `ansible` directory which contains the playbooks 
used to configure the development environment.

---

# Build
To build the box is pretty simple and painless. First, `vagrant up` the machine 
and let the initial build complete. Once that has completed, ssh into the box 
using `vagrant ssh` and run the commands in `box-clean.sh` one by one.

Once you've finished those, run:

    vagrant package --output caffine.box
    
This .box file can now be uploaded to Hashicorp's Atlas for you to make it 
accessible to others (if required).