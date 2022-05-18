## var names for easy copypasta to a module
# project_name
# project_env
# project_resources

variable "project_name" {
    description = "name of the DO project"
    type = string
}

variable "project_env" {
    description = "environment for the DO project"
    type = string
}

variable "project_resources" {
    description = "which resources are in this project?"
    type = list
}