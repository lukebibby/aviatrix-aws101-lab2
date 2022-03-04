variable "vpcs" {
  type        = map(any)
  description = "Collection of VPCs to use in the network"
}

variable "mgmt_subnets" {
  type        = map(any)
  description = "Collection of subnets in the management network"
}