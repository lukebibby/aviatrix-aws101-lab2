variable "mgmt_vpc_cidr_block" {
    type = string
    description = "Management VPC CIDR Block"
    default = "10.1.1.0/24"
}

variable "services_vpc_cidr_block" {
    type = string
    description = "Services VPC CIDR Block"
    default = "10.1.2.0/24"
}