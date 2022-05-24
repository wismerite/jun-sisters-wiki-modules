## var names for easy copypasta to a module
# k8s_name
# k8s_region
# k8s_vpc
# k8s_node_count
# k8s_node_size
# k8s_tags

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

variable "k8s_tags" {
    description = "tags"
    type = list
}