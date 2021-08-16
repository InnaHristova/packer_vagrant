source "vagrant" "ubuntu" {
  communicator = "ssh"
  source_path  = "hashicorp/bionic64"
  provider     = "virtualbox"
  add_force    = true
}



build {
  name = "learn-packer-vagrant"
  sources = [
    "source.vagrant.ubuntu"
  ]

  provisioner "shell" {
    inline = [
      "echo Installing Nginx",
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
    ]
  }

}
