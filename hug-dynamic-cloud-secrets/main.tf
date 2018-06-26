resource "google_compute_instance" "web" {
  name         = "centos-7-1"
  zone         = "${var.GCP_ZONE}"
  machine_type = "n1-standard-1"

  labels {
    name    = "web"
    sshuser = "centos"
    group   = "webservers"
    project = "gcp-demo"
  }

  boot_disk {
    initialize_params {
      image = "${var.IMAGE}"
      size  = "${var.root_volume_size}"
      type  = "pd-ssd"
    }
  }

  metadata {
    sshKeys = "${var.sshuser}:${var.public_key}"
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = "${google_compute_address.ext_ip.address}"
    }
  }
}

resource "google_compute_address" "ext_ip" {
  name = "extip"
}

# user_data                   = "${file("userdata.sh")}"

