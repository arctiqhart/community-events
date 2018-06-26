output "address" {
  value = "${google_compute_instance.web.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "ssh" {
  value = "ssh ${google_compute_instance.web.labels.sshuser}@${google_compute_instance.web.network_interface.0.access_config.0.assigned_nat_ip}"
}
