
resource "aws_route_table_association" "assoc-pub2a" {
  subnet_id      = "${aws_subnet.Public_Primary.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}
resource "aws_route_table_association" "assoc-pub2b" {
  subnet_id      = "${aws_subnet.Public_Secondary.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "assoc-pub2c" {
  subnet_id      = "${aws_subnet.Public_Tertiary.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "assoc-pri2a" {

  subnet_id      = "${aws_subnet.Private_Primary.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"

}
resource "aws_route_table_association" "assoc-pri2b" {

  subnet_id      = "${aws_subnet.Private_Secondary.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"

}
resource "aws_route_table_association" "assoc-pri2c" {

  subnet_id      = "${aws_subnet.Private_Tertiary.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"

}







