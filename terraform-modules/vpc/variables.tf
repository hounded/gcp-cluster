variable "name" {
  description = "Network name"
}

variable "project" {
  description = "The GCP project ID"
}

variable "description" {
  description = "Network description"
  default     = "K8s cluster network"
}
