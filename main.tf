terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
# Calling networks module
module "networks" {
  source       = "./modules/networks"
  network_name = "mynetwork"
}
# Create the mynet-us-vm instance
module "mynet-us-vm" {
  source           = "./modules/instances"
  instance_name    = "mynet-us-vm"
  instance_zone    = "us-west1-a"
  instance_network = "mynetwork"
}
# Create the mynet-eu-vm" instance
module "mynet-eu-vm" {
  source           = "./modules/instances"
  instance_name    = "mynet-eu-vm"
  instance_zone    = "europe-west1-d"
  instance_network = "mynetwork"
}