output "address" {
  value = "${google_compute_address.web.ext_ip.address}"
}

output "ssh" {
  value = "ssh ${google_compute_instance.web.tags.sshUser}@${aws_instance.web.ext_ip.address}"
}
