## Elgg Takeout

The aim of this project is to create simple, zero-config, cross-platform [Elgg](http://elgg.org) test/development environments. To accomplish this, I'm using [Vagrant](vagrantup.com) with [VirtualBox](virtualbox.org). Essentially, you can have an Elgg test/dev environment set up in mere minutes on Windows, Mac OSX, or Linux. 

### Setup

1. Install VirtualBox for your platform. (See [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads))

2. Install Vagrant for your platform. (See [Vagrant Downloads](http://downloads.vagrantup.com/))

3. Clone this repository, ie

	`git clone git://github.com/jrtilson/Elgg-takeout.git takeout`

4. Fire up vagrant

	`cd takeout`    
	`vagrant up`  

5. Once Vagrant has finishished booting/configuring the vm, visit: [http://127.0.0.1:8080](http://127.0.0.1:8080) in your browser to check out your new Elgg test site!


#### Default Accounts 

##### Elgg Admin

**Username:**	admin  
**Password:**	administrator

##### MySQL

**Username:**	root  
**Password:**	root

### Development

Once the Vagrant VM has booted, you'll find the Elgg files in the local elgg folder, ie: 

	takeout/elgg/

This folder is symlinked in the Vagrant VM at: 

	/home/vagrant/elgg/elgg_root

Any changes you make in the local elgg folder will be synced to the VM. Develop away!

---

#### Todo's

- Chef Solo provisioning
- SSL
- Bootstrap script: don't try to recreate elgg dir if it exists

---
Jeff Tilson  