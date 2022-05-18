## var names for easy copypasta to a module
# pg_name
# pg_region
# pg_node_count
# pg_node_size
# pg_vpc_id
# pg_tags
# pg_wiki_db_name
# k8s_cluster_id

variable "pg_name" {
    description = "name of the pge cluster"
    type = string
}

variable "pg_region" {
    description = "region for the pg cluster to be created in"
    type = string
}

variable "pg_node_count" {
    description = "how many nodes for pg cluster"
    type = number
}

variable "pg_node_size" {
    description = "how big are the nodes in the pg cluster?"
    type = string
}

variable "pg_vpc_id" {
    description = "vpc id where the pg cluster resides"
    type = string
}

variable "pg_tags" {
    description = "tags for the pg cluster"
    type = list
}

variable "pg_wiki_db_name" {
    description = "name of the db for the wiki"
    type = string
}

variable "k8s_cluster_id" {
    description = "id of the k8s cluster for db firewall"
    type = string
}