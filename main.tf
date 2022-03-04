/* Resource to create */

/* VPC Creation */
resource "aws_vpc" "vpcs" {
  for_each   = var.vpcs
  cidr_block = each.value.cidr_block
  tags = {
    Name = each.value.name
  }
}

/* Internet Gateways */
resource "aws_internet_gateway" "igws" {
  for_each   = var.vpcs
  vpc_id     = aws_vpc.vpcs[each.value.name].id
}

/* Management Subnets */
resource "aws_subnet" "mgmt_subnets" {
  for_each   = var.mgmt_subnets
  vpc_id     = aws_vpc.vpcs["mgmt_vpc"].id
  cidr_block = each.value.cidr_block
}