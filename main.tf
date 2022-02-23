/* Resource to create */

resource "aws_vpc" "management_vpc" {
    cidr_block = var.mgmt_vpc_cidr_block


    tags = {
        Name = "ManagementVPC"
    }
}

resource "aws_vpc" "services_vpc" {
    cidr_block = var.services_vpc_cidr_block


    tags = {
        Name = "ServicesVPC"
    }
}