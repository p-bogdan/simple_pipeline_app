output "instance_ip" {
    value = google_compute_instance.default.network_interface.0.network_ip
}
output "instance_name" {
  value = google_compute_instance.default.name
}