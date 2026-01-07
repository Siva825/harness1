provider "google" {
    project = "shiva-prasad-483604" 
}
resource "google_compute_instance" "instance1" {
    name = "vm-26"
    zone =  "us-central1-c" 
    machine_type = "e2-medium"
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"        
      }
    }
    network_interface {
        network = "default"
        access_config {
           //
        }
    }
}
