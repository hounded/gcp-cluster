output "genunity_static_ip" {
  value = "${google_compute_global_address.genunity_static_ip.address}"
}

output "gitlab_static_ip" {
  value = "${google_compute_address.gitlab_static_ip.address}"
}
