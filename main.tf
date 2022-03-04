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
  vpc_id     = aws_vpc.vpcs[each.key].id
  tags = {
    Name = each.value.name
  }
}

/* Private Route Tables */
resource "aws_route_table" "private_rtbs" {
  for_each   = var.vpcs
  vpc_id     = aws_vpc.vpcs["mgmt_vpc"].id
  tags = {
    Name = "${each.value.name}-private"
  }
}

/* Public Route Tables */
resource "aws_route_table" "public_rtbs" {
  for_each   = var.vpcs
  vpc_id     = aws_vpc.vpcs["mgmt_vpc"].id
  tags = {
    Name = "${each.value.name}-public"
  }
}

/* Default route to Internet GW for public subnets in each VPC */
/*
resource "aws_route" "public_default_route_to_igw" {
  for_each   = var.vpcs
  route_table_id = 
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igws[each.name].id
  tags = {
    Name = "${each.value.name}-public"
  }
}
*/

/* Management Subnets */
resource "aws_subnet" "mgmt_subnets" {
  for_each   = var.mgmt_subnets
  vpc_id     = aws_vpc.vpcs["mgmt_vpc"].id
  cidr_block = each.value.cidr_block
  tags = {
    Name = each.value.name
  }
}

