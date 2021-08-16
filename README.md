# Bringing up Vagrant box created by Packer

In this repo you will find packer template to bring up Vagrant box with Nginx installed. 

## Prerequisites

* Install [Vagrant](https://www.vagrantup.com/downloads)
* Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)  
* Install [Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)


## Instructions

* Clone the repo.

  ```bash
  $ git clone https://github.com/InnaHristova/packer_vagrant.git
  ``` 

* Navigate to packer_vagrant.

  ```bash
  $ cd packer_vagrant
  ```
* Build packer image. 
  
  ```bash
  $ packer build .
  ```    

* Packer image and vagrant file created in folder output-ubuntu.    

* Navigate to output-ubuntu.

  ```bash
  $ cd output-ubuntu
  ```

* To avoid Vagrant init collisions, create new directoy add the new package.box to Vagrant and init. Examle commands:

  ```bash
  $ mkdir output2
  $ cp package.box output2/newbox.box
  $ cd output2
  $ vagrant box add new-box newbox.box
  $ vagrant init new-box
  ```    

* Bring up the new virtual box created by packer:

  ```bash
  $ vagrant up
  ```      
  
     
    
    
*For more information on how to use packer to build Vagrant box, you may visit:*    
https://www.packer.io/docs/builders/vagrant
