/* Resource to create */

resource "aws_vpc" "management_vpc" {
    cidr_block = var.mgmt_vpc_cidr_block


    tags = {
        Name = "ManagementVPC"
    }
}