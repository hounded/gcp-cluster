# create network to run cluster instances
module "my_network" {
  source = "../terraform-modules/vpc"
  name   = "${var.ntw_name}"
  project = "${var.project_id}"
}

# create cluster
module "my_cluster" {
  source             = "../terraform-modules/cluster"
  name               = "${var.name}"
  description        = "${var.description}"
  zone               = "${var.zone}"
  initial_node_count = "${var.initial_node_count}"
  network            = "${module.my_network.name}"
  project            = "${var.project_id}"
}

# create gitlab node pool and attach it to my-cluster
module "gitlab_np" {
  source       = "../terraform-modules/node-pool"
  project      = "${var.project_id}"
  name         = "gitlab-pool"
  zone         = "${var.zone}"
  cluster_name = "${module.my_cluster.name}"
  node_count   = 1
}
