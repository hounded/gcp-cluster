resource "google_compute_global_address" "genunity_static_ip" {
  name = "genunity-static-ip"
}

resource "google_compute_address" "gitlab_static_ip" {
  name = "gitlab-static-ip"
}
