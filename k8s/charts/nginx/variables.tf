variable "lb_cpu" {
  description = "cpu for nginx lb, has weird units, configure in -live" 
  type = string
}

variable "lb_memory" {
  description = "memory for nginx lb, configure in -live" 
  type = string
}
