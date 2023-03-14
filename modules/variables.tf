variable "bucket_name" {
  description = "GCS bucket name"
  type = string
}

variable "bucket_loc" {
  description = "GCS bucket location"
  type = string
}


variable "zone" {
  description = "GCP project ID"
  default = "us-central1-c"
}

variable "vm_name" {
  description = "GCP project ID"
  default = "dimpultest35r875785"
}

variable "mc_type" {
  description = "GCP project ID"
  #default = "f1-micro"
}

variable "image" {
  description = "GCP project ID"
  default = "debian-cloud/debian-9"
}

variable "network" {
  description = "GCP project ID"
  default = "acn-cio-project-vpc"
}

variable "subnetwork" {
  description = "GCP project ID"
  default = "us-central1-public-subnet"
}
