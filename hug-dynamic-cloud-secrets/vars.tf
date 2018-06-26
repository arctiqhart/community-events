variable "GCP_REGION" {
  default = "us-east1"
}

variable "IMAGE" {
  type = "map"

  default = {
    us-east1 = "centos-7"

    # us-west-2 = "ami-e9503589"
    # eu-west-1 = "ami-051b1563"
  }
}

variable "root_volume_size" {
  description = "How big to make the disk in GB"
  default     = 10
}

project = "HASHI-VAULT"
