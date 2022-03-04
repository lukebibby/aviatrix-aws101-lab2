/* Resource to create */

/* VPC Creation */
resource "aws_vpc" "vpcs" {
  for_each   = var.vpcs
  cidr_block = each.value.cidr_block
  tags = {
    Name = each.value.name
  }
}

/* Subnets */
resource "aws_subnet" "mgmt_subnets" {
  for_each   = var.mgmt_subnets
  vpc_id     = aws_vpc.vpcs["mgmt_vpc"].id
  cidr_block = each.value.subnets.cidr_block
}

/* Transit GW */ /*
resource "aws_ec2_transit_gateway" "tgw" {
  description = "SydneyTGW"
}
*/