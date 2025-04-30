provider "google" {
    project = "sam-458313"
    zone = "us-central1-a"

  
}
resource "google_compute_instance" "instance1" {
    name = "instance-5"
    machine_type = "e2-micro"
    boot_disk {
        initialize_params {
          image = "centos-stream-9"
          size = 30
        }
    
    }   
    network_interface {
        network = "default"
      access_config {
        
      }
    }
}
