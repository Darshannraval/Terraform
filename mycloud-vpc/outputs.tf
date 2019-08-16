


output "id" {
  value = "${aws_vpc.mycloud-vpc.id}"
}



output "private_subnets" {
  value = [
    "${aws_subnet.Private_Primary.id}",
    "${aws_subnet.Private_Secondary.id}",
    "${aws_subnet.Private_Tertiary.id}",
  ]
}

output "public_subnets" {
  value = [
    "${aws_subnet.Public_Primary.id}",
    "${aws_subnet.Public_Secondary.id}",
    "${aws_subnet.Public_Tertiary.id}",
  ]
}



output "Private_Primary_subnet_id" {
  value = "${aws_subnet.Private_Primary.id}"
}
output "Private_Secondary_subnet_id" {
  value = "${aws_subnet.Private_Secondary.id}"
}
output "Private_Tertiary_subnet_id" {
  value = "${aws_subnet.Private_Tertiary.id}"
}
output "Public_Primary_subnet_id" {
  value = "${aws_subnet.Public_Primary.id}"
}
output "Public_Secondary_subnet_id" {
  value = "${aws_subnet.Public_Secondary.id}"
}
output "Public_Tertiary_subnet_id" {
  value = "${aws_subnet.Public_Tertiary.id}"
}

output "private-route-table" {
  value = "${aws_route_table.private-route-table}"
}

output "public-route-table" {
  value = "${aws_route_table.public-route-table}"
}
