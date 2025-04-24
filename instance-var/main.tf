provider "google" {
    project = "${var.project}"
    zone = "${var.zone}"
  
}
resource "google_compute_instance" "instant" {
    name = "${var.name}"
    machine_type = "e2-micro"
    boot_disk {
      initialize_params {
        image = "${var.image}"
      }
    }
    network_interface {
      network = "default"
      access_config {
        
      }
    }
    
  
}
