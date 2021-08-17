# Bringing up Vagrant box created by Packer

In this repo you will find packer template to bring up Vagrant box with Nginx installed. 

## Prerequisites

* Install [Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)
* Install [Vagrant](https://www.vagrantup.com/downloads)  
* Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)


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

* Add the new packet to Vagrant:

  ```bash
  $ vagrant box add new-box package.box
  ```    

* Bring up the new virtual box created by packer:

  ```bash
  $ vagrant up
  ```    
 
## Publishing of the box    

You may publish your box in two ways:

* via UI  
  * Go to https://app.vagrantup.com and login  
  * Follow the steps:  
    * Create name  
    * Create version  
    * Release the version with "release version" button  
    * Add provider virtualbox
    * Upload the box from your computer
    * In Dashboard you can see your boxes
    
* via CLI    
  * Securely authenticate to Vagrant cloud first:    
      * using username and password:      
      ```bash
      $ vagrant cloud auth login
      ```
      * or using token key:     
      ```bash
      $ export VAGRANT_CLOUD_TOKEN=[your token key]
      ```    
   * Upload the box with the following command:    
     ```
     $ vagrant cloud publish --no-private <ORGANIZATION/BOX-NAME> <VERSION> <PROVIDER-NAME>
     ```    
   
 
## Additional Resources
*For more information on how to use packer to build Vagrant box, you may visit:*    
https://www.packer.io/docs/builders/vagrant    
https://www.vagrantup.com/docs/cli/cloud
