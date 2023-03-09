variable "project_id" {
  description = "The name of the project resource is being created"
  default     = "qwiklabs-gcp-03-ee0b9243cb46"
}
variable "instance_name" {}
variable "instance_zone" {}
variable "instance_type" {
  default = "e2-micro"
  }
variable "instance_network" {}
