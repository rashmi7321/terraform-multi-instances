variable "node_count" {
  default = "2"
 }

variable "project" {
  type        = string
  description = "Google Cloud project name"
  default = "terraformation"
}

variable "region" {
  type        = string
  description = "Default Google Cloud region"
  default = "us-central1"
}

variable "zone" {
  description = "The zone to create the bastion host in. Must be within the subnetwork region."
  type        = string
  default     = "us-central1-b"
}

variable "machine_type" {
  description = "The machine type of the instance."
  type        = string
  default     = "f1-micro"
}

variable "source_image" {
  description = "The source image to build the VM using. Specified by path reference or by {{project}}/{{image-family}}"
  type        = string
  default     = "centos-7-v20200403"
}


/* variable "disk_name" {
  description = "The name of the data disk"
  type        = string
  #default     = "test-node-1-index-disk-${count.index}-data"
} */

variable "disk_size" {
  description = "The size of data disk"
  type        = string
  default     = "5"
}

/* variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
  #default     = "test-node-${count.index}"
} */


