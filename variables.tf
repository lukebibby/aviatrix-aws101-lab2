variable "vpcs" {
  type        = map(any)
  description = "Collection of VPCs to use in the network"
}

/*
variable "mgmt_vpc_cidr_block" {
    type = string
    description = "Management VPC CIDR Block"
    default = 
}

variable "services_vpc_cidr_block" {
    type = string
    description = "Services VPC CIDR Block"
    default = "10.1.2.0/24"
}
*/