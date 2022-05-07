variable "k8s_name" {
    description = "name for the kube cluster"
    type = string
}

variable "k8s_region" {
    description = "region for the kube cluster"
    type = string
}

variable "k8s_vpc" {
    description = "uuid of the vpc where we want the kube cluster to run"
    type = string
}

variable "k8s_node_count" {
    description = "how many nodes in the k8s node pool"
    type = number
}

variable "k8s_node_size" {
    description = "how large is each node?"
    type = string
}