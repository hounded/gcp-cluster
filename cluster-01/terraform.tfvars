project_id = "clusterkube"
region = "australia-southeast1"

name = "k8s-cluster"
description = "Test cluster to showcase CI/CD with k8s, Gitlab CI, and Helm"
zone = "australia-southeast1-b"
initial_node_count = 2 # number of nodes in the cluster

ntw_name = "cluster-network-01" # VPC network name which will be created