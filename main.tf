resource "google_compute_instance" "default" {
  name         = "simple-pipeline-instance3"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  project      = "lab-project-282605"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "jenkins@lab-project-282605.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
    metadata = {
    
  }
  metadata_startup_script = "sudo apt-get -y install default-jdk-headless"

}