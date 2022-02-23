vpcs = {
  mgmt_vpc = {
    cidr_block = "10.1.1.0/24"
    name       = "ManagementVPC"
    subnets = {
      private_1 = {
        cidr_block = "10.1.1.0/28"
      }
      private_2 = {
        cidr_block = "10.1.1.16/28"
      }
    }
  }
  services_vpc = {
    cidr_block = "10.1.2.0/24"
    name       = "ServicesVPC"
  }
}