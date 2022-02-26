terraform {
  required_providers {
      linode = {
        source = "linode/linode"
        version = "1.16.0"
      }
  }
}

# Linode Provider definition

provider  "linode" {
  token = var.token
}


resource  "linode_instance"  "webserver" {
  image = "linode/ubuntu20.04"
  label = "webserver"
  region = "us-east"
  type = "g6-nanode-1"
  authorized_keys = [ var.authorized_keys ]
  root_pass = var.root_pass
  backups_enabled = true
}