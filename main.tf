/* Resource to create */

resource "aws_vpc" "management_vpc" {
  cidr_block = var.vpcs.mgmt_vpc.cidr_block

  tags = {
    Name = var.vpcs.mgmt_vpc.name
  }
}

resource "aws_vpc" "services_vpc" {
  cidr_block = var.vpcs.services_vpc.cidr_block


  tags = {
    Name = var.vpcs.services_vpc.name
  }
}