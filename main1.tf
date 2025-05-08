provider "google" {
    project = "sam-458313"
    zone = "us-west1-b"

  
}
resource "google_compute_instance" "instance1" {
    name = "instance-5"
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
