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
resource "aws_subnet" "tgw" {
  for_each   = var.vpcs
  vpc_id     = aws_vpc.vpcs[each.key].id
  cidr_block = each.value.subnets.cidr_block
}

/* Transit GW */ /*
resource "aws_ec2_transit_gateway" "tgw" {
  description = "SydneyTGW"
}
*/