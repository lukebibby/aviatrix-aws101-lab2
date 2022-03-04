/* VPC configuration items */
vpcs = {
  mgmt_vpc = {
    cidr_block = "10.1.1.0/24"
    name       = "ManagementVPC"
  }
  services_vpc = {
    cidr_block = "10.1.2.0/24"
    name       = "ServicesVPC"
  }
}

/* Management subnet configuration items */
mgmt_subnets = {
  shared_services = {
    cidr_block = "10.1.1.0/24"
    name       = "SharedServices-Subnet"
  }
}