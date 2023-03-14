# resource "google_storage_bucket" "mybucket" {
#   name     = var.bucket_name
#   location = var.bucket_loc
#   #"us-east1"
#   #storage_class = "STANDARD"
#   uniform_bucket_level_access = true
#   #Access_control = "Uniform"
# }

resource "google_compute_instance" "vm_instance1" {
      name         = var.vm_name
      machine_type = var.mc_type
      zone         = var.zone
      boot_disk {
        initialize_params {
          image = var.image
        }
      }    
      network_interface {      
        #network = "dimpulsun"
        #allow_stopping_for_update = true 
        network =var.network
        subnetwork= var.subnetwork
        #desired_status = "TERMINATED"
        #allow_stopping_for_update = true 
        #subnetwork ="sunayana"
        access_config {
        }
      }
    }
