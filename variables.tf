variable "res_group_name" {
    description = "Resource Group name"
}

variable "location" {
    description = "Region to be created in"
}

variable "tags" {
    type = map(string)
}
