# ATTENTION!!!!!
# 
# You will notice that we don't define any routes in the `aws_route_table`.  https://github.com/terraform-providers/terraform-provider-aws/issues/4110#issuecomment-379414513
#
# NOTE on Route Tables and Routes: Terraform currently provides both a standalone Route resource and a Route Table resource with routes defined in-line. 
# At this time you cannot use a Route Table with in-line routes in conjunction with any Route resources. Doing so will cause a conflict of rule settings and will overwrite rules.
resource "aws_route_table" "public-route-table" {
  vpc_id = "${aws_vpc.mycloud-vpc.id}"

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route" "default-route-public" {
  route_table_id         = "${aws_route_table.public-route-table.id}"
  destination_cidr_block = "${var.default-destination}"
  gateway_id             = "${aws_internet_gateway.gw.id}"
}

resource "aws_route_table" "private-route-table" {
  vpc_id = "${aws_vpc.mycloud-vpc.id}"

  tags = {
    Name = "private-route-table"
  }
}

resource "aws_route" "default-route-private" {
  route_table_id         = "${aws_route_table.private-route-table.id}"
  destination_cidr_block = "${var.default-destination}"
  nat_gateway_id         = "${aws_nat_gateway.privatenat.id}"
}
