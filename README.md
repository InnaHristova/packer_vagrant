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

* You may add the new box to Vagrant:

  ```bash
  $ vagrant box add new-box package.box
  ```    
 
## Publishing of the box    

You may publish your box in two ways:

* via UI  
  * Go to https://app.vagrantup.com and login  
  * Follow the steps:  
    * Create name, add description and click "Create box"      
    Firststep<img width="1208" alt="image" src="https://user-images.githubusercontent.com/87419448/129770204-61228ef8-a76a-4bb3-86a3-f66dc8a68ddc.png">
    * Create version    
    Secondstep<img width="1183" alt="image" src="https://user-images.githubusercontent.com/87419448/129770460-541af026-e73f-410f-b95e-5672a4744e83.png">

    * Add a provider   
    Thirdstep<img width="1079" alt="image" src="https://user-images.githubusercontent.com/87419448/129770496-24a73d20-5140-4aca-b207-a32c700aa103.png">

    * Add provider's name and click "continue to upload" 
    Fourthstep<img width="960" alt="image" src="https://user-images.githubusercontent.com/87419448/129770540-c9d1f936-cfc5-4c74-89b2-c647b89e77ca.png">

    * Add provider file and click update provider 
    Fifthstep<img width="945" alt="image" src="https://user-images.githubusercontent.com/87419448/129770584-de1c7777-41c8-4f5f-961c-05798d6f092c.png">
   
    * Release the version with "release" button   
    Sixthstep<img width="1212" alt="image" src="https://user-images.githubusercontent.com/87419448/129770610-60e9d433-37b0-44ad-81c3-792a1e3ccc83.png">

    * Clich release version again   
     Seventhstep<img width="1209" alt="image" src="https://user-images.githubusercontent.com/87419448/129770649-27e14fae-cecc-47fe-b951-34ac8caef7e9.png">
 
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
     $ vagrant cloud publish --no-private <ORGANIZATION/BOX-NAME> <VERSION> virtualbox output-ubuntu/package.box
     ```    
   
 
## Additional Resources
*For more information on how to use packer to build Vagrant box, you may visit:*    
https://www.packer.io/docs/builders/vagrant    
https://www.vagrantup.com/docs/cli/cloud
