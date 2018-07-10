resource "google_compute_network" "ntw" {
  name                    = "${var.name}"
  description             = "${var.description}"
  project                 = "${var.project}"
  auto_create_subnetworks = "true"
}
