
output "kubconfig" {
  value = " ... \nRun command to configure access via kubectl:\n$ gcloud container clusters get-credentials ${module.my_cluster.name} --zone ${var.zone} --project ${var.project_id}"
}
