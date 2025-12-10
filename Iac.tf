provider "google" {
    project = "siva-477505" 
}
resource "google_compute_instance" "instance1" {
    name = "all-in-one"
    zone =  "us-central1-c" 
    machine_type = "e2-medium"
    boot_disk {
      initialize_params {
        image = "projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20251205"        
      }
    }
    network_interface {
        network = "default"
        access_config {
           //
        }
    }
}
