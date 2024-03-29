## vars for easy copypasta to modules
# vpc_name
# vpc_region
# vpc_ip_range

variable "vpc_name" {
    description = "name of the DO vpc"
    type = string
}

variable "vpc_region" {
    description = "region for the vpc to be created in"
    type = string
}

variable "vpc_ip_range" {
    description = "address range for the vpc"
    type = string
}