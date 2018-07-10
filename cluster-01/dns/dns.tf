resource "google_dns_managed_zone" "primary" {
  name        = "genunity-zone"
  dns_name    = "genunity.co.nz."
  description = "DNS zone for the Genunity domain"
}

resource "google_dns_record_set" "a_genunity" {
  name = "${google_dns_managed_zone.primary.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.primary.name}"

  rrdatas = ["${google_compute_global_address.genunity_static_ip.address}"]
}

resource "google_dns_record_set" "cname_genunity" {
  name = "www.${google_dns_managed_zone.primary.dns_name}"
  type = "CNAME"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.primary.name}"

  rrdatas = ["${google_dns_managed_zone.primary.dns_name}"]
}

resource "google_dns_record_set" "gitlab" {
  # wild card domain name for gitlab services
  name = "*.ci.${google_dns_managed_zone.primary.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.primary.name}"

  rrdatas = ["${google_compute_address.gitlab_static_ip.address}"]
}
