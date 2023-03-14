provider "google" {
      #path for GCP service account credentials
      #credentials = file("credentials.json")
      # GCP project ID
      project     = "sbx-107038-rm0228-bd-3ba40310"
      # Any region of your choice
      #region = var.region
      # Any zone of your choice      
      #zone        = var.zone
    }
    
module "vm_instanceandbucket"{
  source ="./modules"
  #C:\Users\dimpul.sunayana.giri\Documents\Terraform\terraform_1.3.4_windows_386\modules
  vm_name = "dimpulmodule123"
  mc_type = "f1-micro"
  zone= "us-central1-b"
  image ="debian-cloud/debian-11"
  network="acn-cio-project-vpc"
  subnetwork= "us-central1-private-subnet"
  #bucket_name = "dimpulmodule123"
  #bucket_loc = "us-east1"
  # vpc_network =  "terraform-vpc-network"
  # vpc_subnetwork = "terraform-subnetwork"
  # cidr_range ="10.2.0.0/16"
}
