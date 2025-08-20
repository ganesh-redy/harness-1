provider "google" {
    project = "project-k-467310"
    zone = "us-west1-c"

  
}
resource "google_compute_instance" "instance1" {
    name = "instance-99"
    machine_type = "e2-micro"
    boot_disk {
        initialize_params {
          image = "centos-stream-9"
         
        }
    
    }   
    network_interface {
        network = "default"
      access_config {
        
      }
    }
}
