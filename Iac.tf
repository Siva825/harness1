provider "google" {
    project = "siva-477505" 
}
resource "google_compute_instance" "instance2" {
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
    metadata_startup_script = <<-EOT
    #!/bin/bash

    # Install Docker using official script (more reliable)
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
        
    # Start and enable Docker
    sudo systemctl enable docker
    sudo systemctl start docker
        
    # Wait for Docker to be ready
    sleep 30

    EOT
}
