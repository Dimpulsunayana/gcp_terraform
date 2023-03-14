resource "google_storage_bucket" "mybucket" {
  name     = var.bucket_name
  location = var.bucket_loc
  #"us-east1"
  #storage_class = "STANDARD"
  uniform_bucket_level_access = true
  #Access_control = "Uniform"
}
